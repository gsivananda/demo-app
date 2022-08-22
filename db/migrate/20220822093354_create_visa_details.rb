class CreateVisaDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :visa_details do |t|
      t.boolean   :used_pen
      t.boolean   :outside_country
      t.boolean   :inside_country
      t.string    :visiting_from
      t.string    :visiting_to
      t.boolean   :is_more_occasion
      t.text      :types_of_occasion
      t.string    :date_of_extend
      t.text      :detailed_description
      t.string    :image
      t.string    :name_of_city
      t.string    :name_of_state
      t.string    :name_of_country
      t.integer   :stay

      t.timestamps
    end
  end
end
