class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.boolean :public
      t.string :image

      t.timestamps null: false
    end
  end
end
