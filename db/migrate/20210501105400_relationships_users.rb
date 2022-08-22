class RelationshipsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships_users do |t|
      t.integer         :relationship_id
      t.integer         :user_id
    end
  end
end
