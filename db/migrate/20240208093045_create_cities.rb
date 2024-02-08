class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :appointment, index: true
      
    end
  end
end
