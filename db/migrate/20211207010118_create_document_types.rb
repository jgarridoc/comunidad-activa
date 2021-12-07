class CreateDocumentTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :document_types do |t|
      t.string :tipo_documento

      t.timestamps
    end
  end
end
