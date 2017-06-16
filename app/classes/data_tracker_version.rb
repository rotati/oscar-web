class DataTrackerVersion
  def self.assessment_domain(assessment_id, event)
    ad_ids = AssessmentDomain.where(assessment_id: assessment_id).pluck(:id)
    PaperTrail::Version.where.not(item_type: exclude_item_type).where('item_id IN (?) AND event = ?', ad_ids, event).order('created_at DESC')
  end

  def self.case_note(case_note_id, event)
    ids = CaseNoteDomainGroup.where(case_note_id: case_note_id).pluck(:id)
    PaperTrail::Version.where.not(item_type: exclude_item_type).where('item_id IN (?) AND event = ?', ids, event)
  end

  def self.agency_and_quantitative_case(client_id, event)
    agency_ids = AgencyClient.where(client_id: client_id).pluck(:id)
    qc_ids = ClientQuantitativeCase.where(client_id: client_id).pluck(:id)
    PaperTrail::Version.where.not(item_type: exclude_item_type).where('item_id IN (?) AND item_type = ? OR item_id IN (?) AND item_type = ? AND event = ?', agency_ids, 'AgencyClient', qc_ids, 'ClientQuantitativeCase', event)
  end

  def self.tracking(program_stream_id, event)
    ids = Tracking.where(program_stream_id: program_stream_id).pluck(:id)
    PaperTrail::Version.where.not(item_type: exclude_item_type).where('item_id IN (?) AND event = ? AND item_type = ?', ids, event, Tracking)
  end

  private

  def self.exclude_item_type
    %w(ClientCustomField FamilyCustomField PartnerCustomField UserCustomField)
  end
end
