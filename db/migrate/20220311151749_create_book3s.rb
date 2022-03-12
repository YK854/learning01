class CreateBook3s < ActiveRecord::Migration[5.2]
  def change
    create_table :book3s do |t|

      t.timestamps
    end
  end
end
