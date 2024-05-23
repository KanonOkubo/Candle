class AddTweetToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :tweet, null: false, foreign_key: true
  end
end
