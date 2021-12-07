class CreateFees < ActiveRecord::Migration[6.1]
  def change
    create_table :fees do |t|
      t.integer :cuota

      t.timestamps
    end
  end
end
