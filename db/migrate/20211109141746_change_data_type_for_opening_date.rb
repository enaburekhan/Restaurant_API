class ChangeDataTypeForOpeningDate < ActiveRecord::Migration[6.1]
  def change
    change_table :restaurants do |t|
      t.change :opening_date, :string
    end
  end
end
