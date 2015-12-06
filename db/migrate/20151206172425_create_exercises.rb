class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :question
      t.string :guest
      t.text :incorrect
      t.text :correct

      t.timestamps null: false
    end
  end
end
