class CreateSupplierTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :supplier_types do |t|
      t.string :tipo_proveedor

      t.timestamps
    end
  end
end
