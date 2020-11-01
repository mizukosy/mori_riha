class CreateTherapists < ActiveRecord::Migration[6.0]
  def change
    create_table :therapists do |t|
      t.string      :name               , null: false
      t.integer     :therapist_type_id  , null: false
      t.integer     :exp_year           , null: false
      t.timestamps
    end
  end
end
