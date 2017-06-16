class AddFieldToServiceRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :service_requests, :issue, :string
  end
end
