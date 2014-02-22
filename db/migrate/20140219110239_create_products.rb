class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :text
      t.date :date

      t.timestamps
    end
  end
end
