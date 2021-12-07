class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :numero
      t.references :document_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
