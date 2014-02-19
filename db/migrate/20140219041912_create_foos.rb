class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.string :uuid

      t.timestamps
    end
  end
end
