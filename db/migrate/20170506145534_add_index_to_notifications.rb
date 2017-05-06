class AddIndexToNotifications < ActiveRecord::Migration[5.0]
  def change
    change_table :notifications do |t|
      t.index [:account_id, :activity_type, :activity_id], name: 'account_id_activity', unique: true
      t.remove_index name: 'account_activity'
    end
  end
end
