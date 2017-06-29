class CreateJockey < ActiveRecord::Migration
  def change
    create_table :jockey do |t|
      t.string :name
  end
end
