class AddPhoneNumberToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :phone_no, :string
  end
end
