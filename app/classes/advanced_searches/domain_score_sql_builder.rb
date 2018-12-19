module AdvancedSearches
  class DomainScoreSqlBuilder

    def initialize(domain_id, rule)
      @operator     = rule['operator']
      @value        = rule['value']
      @domain_id    = domain_id
    end

    def get_sql
      sql_string = 'clients.id IN (?)'
      sub_query = 'SELECT MAX(assessments.created_at) from assessments where assessments.client_id = clients.id'
      assessments = Assessment.joins([:assessment_domains, :client]).where("assessments.created_at = (#{sub_query})")

      case @operator
      when 'equal'
        assessments = assessments.where(assessment_domains: { domain_id: @domain_id, score: @value })
      when 'not_equal'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score != ?', @domain_id, @value)
      when 'less'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score < ?', @domain_id, @value)
      when 'less_or_equal'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score <= ?', @domain_id, @value)
      when 'greater'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score > ?', @domain_id, @value)
      when 'greater_or_equal'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score >= ?', @domain_id, @value)
      when 'between'
        assessments = assessments.where(assessment_domains: { domain_id: @domain_id, score: @value.first..@value.last })
      when 'is_empty'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score IS NOT NULL', @domain_id)
        client_ids = Client.where.not(id: assessments.pluck(:client_id).uniq).pluck(:id).uniq
      when 'is_not_empty'
        assessments = assessments.where('assessment_domains.domain_id = ? and assessment_domains.score IS NOT NULL', @domain_id)
      # when 'average'
      #   assessments = assessments.where('assessment_domains.domain_id =')
      # when 'has_changed'
      #   assessments = Assessment.joins([:assessment_domains, :client])
      #   assessments = assessments.where(assessment_domains: {domain_id: @domain_id, previous_score: @value.first, score: @value.last})
      # when 'has_not_changed'
      #   assessments = Assessment.joins([:assessment_domains, :client])
      #   assessments = assessments.where.not(assessment_domains: {domain_id: @domain_id, previous_score: @value.first, score: @value.last})
      end
      client_ids = assessments.uniq.pluck(:client_id) unless @operator == 'is_empty'
      { id: sql_string, values: client_ids }
    end
  end
end
