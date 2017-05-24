class CreateDialogues < ActiveRecord::Migration[5.0]
  def change
    create_table :dialogues do |t|
      t.references :teacher, foreign_key: true
      t.references :event, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
