class CreateInfoStatuses < ActiveRecord::Migration
  def change
    create_table :info_statuses do |t|
      t.text :text

      t.timestamps
    end
  end
end
