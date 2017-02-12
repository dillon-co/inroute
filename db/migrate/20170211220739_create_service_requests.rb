class CreateServiceRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :service_requests do |t|
      t.string :name
      t.string :phone_number
      t.text :car_features
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
