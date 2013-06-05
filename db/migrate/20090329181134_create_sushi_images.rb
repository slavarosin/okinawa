class CreateSushiImages < ActiveRecord::Migration
  def self.up
    create_table :sushi_images do |t|
      t.integer :sushi_id
      t.binary :image

      t.timestamps
    end
  end

  def self.down
    drop_table :sushi_images
  end
end
