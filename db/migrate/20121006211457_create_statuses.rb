class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :title
      t.string :user_name
      t.timestamps
    end
  end
end
