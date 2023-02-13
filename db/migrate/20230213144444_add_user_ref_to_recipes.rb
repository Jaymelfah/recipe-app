class AddUserRefToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user, foreign_key: true, null: false
  end
end
