class CreateTagMaps < ActiveRecord::Migration
  def change
    create_table :tag_maps do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :prototype, null: false, foreign_key: true
      t.timestamps
    end
  end
end
