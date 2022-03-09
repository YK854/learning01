class CreateBook2s < ActiveRecord::Migration[5.2]
  def change
    create_table :book2s do |t|
      t.string :title
      t.string :body
      t.string :image_id

      t.timestamps
    end
  end
end
