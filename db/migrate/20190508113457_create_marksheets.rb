class CreateMarksheets < ActiveRecord::Migration[5.2]
  def change
    create_table :marksheets do |t|
    	t.string :roll_no
    	t.string :physics
    	t.string :chemistry
    	t.string :mathematics
    	t.references :student

      t.timestamps
    end
  end
end
