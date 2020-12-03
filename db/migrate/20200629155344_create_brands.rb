class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
