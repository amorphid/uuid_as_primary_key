class CreateFoos < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :foos, id: :uuid do |t|
      t.string :bar

      t.timestamps
    end
  end
end
