class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :notificacions do |t|
      t.string   :nombre
      t.text     :cuerpo
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :financiacions do |t|
      t.string   :nombre
      t.text     :cuerpo
      t.datetime :created_at
      t.datetime :updated_at
    end

    change_column :users, :administrator, :boolean, :default => false
  end

  def self.down
    change_column :users, :administrator, :boolean, default: false

    drop_table :notificacions
    drop_table :financiacions
  end
end
