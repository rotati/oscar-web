class AddClientGlobalIdToSharedClients < ActiveRecord::Migration
  def change
    add_column :shared_clients, :global_id, :integer
    add_index :shared_clients, :global_id
  end
end