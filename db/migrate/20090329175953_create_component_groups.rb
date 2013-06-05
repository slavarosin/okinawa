class CreateComponentGroups < ActiveRecord::Migration
  def self.up
    create_table :component_groups do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :component_groups
  end
end
