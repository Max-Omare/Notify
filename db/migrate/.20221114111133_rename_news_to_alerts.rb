class RenameNewsToAlerts < ActiveRecord::Migration[7.0]
  def change
    def self.up
      rename_table :news, :alerts
    end

    def self.down
      rename_table :alerts, :news
    end
  end
end
