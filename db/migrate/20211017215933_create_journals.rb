class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.belongs_to :trip, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
