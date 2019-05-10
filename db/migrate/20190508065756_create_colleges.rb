class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.string :phone
    

      t.timestamps
    end
  end
end
