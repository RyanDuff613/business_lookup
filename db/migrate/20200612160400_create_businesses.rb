class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.column(:name, :string)
      t.column(:business_type, :string)
      t.column(:website, :string)
      t.column(:phone, :string)
      t.column(:address, :string)
      t.timestamps()
    end
  end
end
