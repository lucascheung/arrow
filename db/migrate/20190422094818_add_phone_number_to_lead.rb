class AddPhoneNumberToLead < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :phone_number, :string
  end
end
