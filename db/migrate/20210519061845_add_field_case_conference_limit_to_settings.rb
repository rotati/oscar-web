class AddFieldCaseConferenceLimitToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :case_conference_limit, :integer, default: 0
    add_column :settings, :case_conference_frequency, :string, default: "week"
  end
end
