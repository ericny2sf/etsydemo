class DeleteStageFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :stage
  end
end
