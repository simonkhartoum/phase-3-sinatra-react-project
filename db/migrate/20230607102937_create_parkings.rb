class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.string :name
      t.integer :lot_num
      t.belongs_to :region, foreign_key: true
      t.string :county

      t.timestamps
    end

  end
end
