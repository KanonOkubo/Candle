class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :image
      t.date :date
      t.string :place
      t.integer :price
      t.text :comment
      t.text :address

      t.timestamps
    end
  end
end
