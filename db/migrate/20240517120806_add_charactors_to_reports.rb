class AddCharactorsToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :shirokuma, :integer
    add_column :reports, :neko, :integer
    add_column :reports, :pengin, :integer
    add_column :reports, :tonkatu, :integer
    add_column :reports, :tokage, :integer
    add_column :reports, :sumissi, :integer
    add_column :reports, :yama, :integer
    add_column :reports, :mogura, :integer
    add_column :reports, :fukuro, :integer
    add_column :reports, :cresult, :integer
  end
end
