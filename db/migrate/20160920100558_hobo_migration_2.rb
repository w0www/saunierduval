class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :notificacions, :fecha, :date
    add_column :notificacions, :estado, :string

    change_column :users, :administrator, :boolean, :default => false
  end

  def self.down
    remove_column :notificacions, :fecha
    remove_column :notificacions, :estado

    change_column :users, :administrator, :boolean, default: false
  end
end
