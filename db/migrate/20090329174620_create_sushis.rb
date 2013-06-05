class CreateSushis < ActiveRecord::Migration
  def self.up
    create_table :sushis do |t|      
      t.timestamps
    end
  end

  def self.down
    drop_table :sushis
  end
end
