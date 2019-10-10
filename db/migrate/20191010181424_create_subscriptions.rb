class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :user, index: true
      t.references :subscribed, polymorphic: true, index: true
      t.timestamps
    end
  end
end
