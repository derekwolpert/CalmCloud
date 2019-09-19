class ChangeTracks < ActiveRecord::Migration[5.2]
  def change
    change_column_null :tracks, :description, false
  end
end
