class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :position
      t.boolean :visible

      t.timestamps
    end
  end
end
