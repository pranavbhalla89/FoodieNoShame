class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :zip
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
