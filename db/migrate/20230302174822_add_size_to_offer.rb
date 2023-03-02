class AddSizeToOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :size, :string
  end
end
