class HoboMigration3 < ActiveRecord::Migration
  def self.up
    change_column :notificacions, :fecha, :datetime

    change_column :users, :administrator, :boolean, :default => false
  end

  def self.down
    change_column :notificacions, :fecha, :date

    change_column :users, :administrator, :boolean, default: false
  end
end
