class AddColumnToNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters, :votes_count, :integer
  end
end
