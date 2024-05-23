class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.date :date
      t.string :place
      t.string :weather
      t.float :temperature
      t.float :sales
      t.integer :number
      t.integer :pricemean
      t.integer :anumber
      t.integer :lnumber
      t.integer :knumber
      t.integer :inumber

      t.timestamps
    end
  end
end
