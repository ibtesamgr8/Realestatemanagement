class AddDocsToUser < ActiveRecord::Migration
  def change
    add_column :users, :docs, :string
  end
end
