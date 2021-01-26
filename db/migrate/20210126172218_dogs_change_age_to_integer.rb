class DogsChangeAgeToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :dogs, :age, :integer
  end
end
