class CreateComponentGroupTexts < ActiveRecord::Migration
  def self.up
    create_table :component_group_texts do |t|
      t.string :lang
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :component_group_texts
  end
end
