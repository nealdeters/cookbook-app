class AddPreptimeToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :preptime, :string
  end
end
