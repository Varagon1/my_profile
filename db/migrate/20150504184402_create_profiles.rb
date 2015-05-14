class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
