class ChangePhoneNumberToPhoneInRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone_no
    add_column :restaurants, :phone_number, :string
  end
end
