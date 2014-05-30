class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :recorded_at
      t.float :temperature
      t.boolean :disturbed
      t.boolean :intercourse
      t.boolean :protected
      t.string :cervix_firmness
      t.string :cervix_height
      t.string :cirvix_openness
      t.string :flow_type
      t.integer :flow_volume
      t.string :ferning
      t.string :opk
      t.string :pregancy_test
      t.boolean :ovulatory_pain
      t.boolean :breast_tenderness
      t.boolean :breast_fullness
      t.boolean :alcohol
      t.boolean :cramps
      t.boolean :exercise
      t.boolean :travel
      t.boolean :ibuprofen
      t.boolean :tylenol
      t.boolean :multivitamin
      t.text :notes

      t.timestamps
    end
  end
end
