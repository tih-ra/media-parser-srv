class CreateMediaObjects < ActiveRecord::Migration[5.1]
  def change
    create_table :media_objects do |t|
      t.string :title
      t.string :url
      t.references :media_pull, foreign_key: true

      t.timestamps
    end
  end
end
