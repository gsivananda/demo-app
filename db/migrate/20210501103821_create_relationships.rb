class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.string      :name
      t.string      :display_name
    end
  end
end
