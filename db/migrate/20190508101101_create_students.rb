class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.integer :mobile
      t.string :email_id
      t.references :college

      t.timestamps
    end
  end
end
