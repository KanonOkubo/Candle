class AddDetailsToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :glassnumber, :integer
    add_column :reports, :bidama, :integer
    add_column :reports, :float, :integer
    add_column :reports, :box, :integer
  end
end
