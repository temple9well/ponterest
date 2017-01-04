class CreatePons < ActiveRecord::Migration
  def change
    create_table :pons do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
