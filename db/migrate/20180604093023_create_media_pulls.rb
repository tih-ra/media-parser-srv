class CreateMediaPulls < ActiveRecord::Migration[5.1]
  def change
    create_table :media_pulls do |t|
      t.string :long_cid
      t.string :name

      t.timestamps
    end
  end
end
