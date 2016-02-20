class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|

      t.string :plot_number
      t.string :membership
      t.text :desciption
      t.boolean :is_corner
      t.boolean :is_westopen
      t.references :category
      t.integer :size_of_plot
      t.references :user
      t.timestamps null: false
    end
  end
end
