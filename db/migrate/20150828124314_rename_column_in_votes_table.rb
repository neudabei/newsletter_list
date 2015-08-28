class RenameColumnInVotesTable < ActiveRecord::Migration
  def change
    rename_column :votes, :voteable_id, :newsletter_id
  end
end
