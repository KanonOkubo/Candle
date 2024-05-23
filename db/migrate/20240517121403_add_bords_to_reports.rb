class AddBordsToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :furoshiki, :integer
    add_column :reports, :tapioka, :integer
    add_column :reports, :btapioka, :integer
    add_column :reports, :hokori, :integer
    add_column :reports, :suzume, :integer
    add_column :reports, :nisetumuri, :integer
  end
end
