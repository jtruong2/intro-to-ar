class FixJockeysTableName < ActiveRecord::Migration
  def change
    rename_table('jockey', 'jockeys')
  end
end
