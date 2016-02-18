class Changecolumn < ActiveRecord::Migration
  def change
  	rename_column :categories, :type, :categorytype
  	
  end
end
