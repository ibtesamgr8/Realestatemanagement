class CreateAllottees < ActiveRecord::Migration
  def change
    create_table :allottees do |t|
      t.string :registration_no	
      t.string :name
      t.string :cnic_no
      t.string :cell_no
      t.string :email_id
      t.string :curren_address
      t.string :other_address
      t.string :registration_date
      t.string :description
      t.string :status
      t.string :name_of_kin
      t.string :kin_cnic
      t.string :kin_address
      t.string :kin_cell_no
      t.string :relation_with_kin
	    t.references :plot
      t.timestamps null: false
    end
  end
end
