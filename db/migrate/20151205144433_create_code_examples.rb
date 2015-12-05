class CreateCodeExamples < ActiveRecord::Migration
  def change
    create_table :code_examples do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
