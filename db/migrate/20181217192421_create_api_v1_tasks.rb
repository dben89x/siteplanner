class CreateAPIV1Tasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.references :project

      t.timestamps
    end
  end
end
