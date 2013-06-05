class CreateSushiTexts < ActiveRecord::Migration
  def self.up
    create_table :sushi_texts do |t|
      t.string :lang
      t.string :text
      t.integer :sushi_id
      t.string :code

      t.timestamps
    end
  end

  def self.down
    drop_table :sushi_texts
  end
end
