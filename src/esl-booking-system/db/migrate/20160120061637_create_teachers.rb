class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.boolean :gender
      t.string :nationality

      t.timestamps null: false
    end
  end
end
