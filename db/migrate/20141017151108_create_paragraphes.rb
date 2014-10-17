class CreateParagraphes < ActiveRecord::Migration
  def change
    create_table :paragraphes do |t|
      t.text :corps
      t.references :chapitre, index: true

      t.timestamps
    end
  end
end
