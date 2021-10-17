class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :city
      t.string :country
      t.string :image_url
      t.boolean :been_there
      t.text :reason
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
