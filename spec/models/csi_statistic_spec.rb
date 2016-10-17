describe CsiStatistic, 'statistic data' do
  let!(:user) { create(:user) }
  let!(:client) { create(:client, state: 'accepted', user: user) }
  let!(:domain) { create(:domain, name: '1A') }
  
  let!(:assessment){ create(:assessment, client: client, created_at: 7.months.ago) }
  let!(:other_assessment){ create(:assessment, client: client, created_at: Date.today) }

  let!(:assessment_domain){ create(:assessment_domain, assessment: assessment, domain: domain, note: 'test', score: 4, created_at: 7.months.ago)}
  let!(:other_assessment_domain){ create(:assessment_domain, assessment: other_assessment, domain: domain, note: 'test', score: 3, created_at: Date.today)}

  it 'returns average domain score without filter' do
    data = [{:name=>"1A", :data=>{:"Assessment (1)"=>4.0,
              :"Assessment (2)"=>3.0}}]
    
    statistic = CsiStatistic.new(Client.all)
    expect(statistic.assessment_domain_score).to eq(data)
  end
end
