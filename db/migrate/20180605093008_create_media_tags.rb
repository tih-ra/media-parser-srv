class CreateMediaTags < ActiveRecord::Migration[5.1]
  def change
    create_table :media_tags do |t|
      t.string :name
      t.string :regexp_rule
      t.references :media_object, foreign_key: true

      t.timestamps
    end
  end
end
