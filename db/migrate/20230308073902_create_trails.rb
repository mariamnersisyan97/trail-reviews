class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.float :distance

      t.timestamps
    end
  end
end
