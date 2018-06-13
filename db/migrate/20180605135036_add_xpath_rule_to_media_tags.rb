class AddXpathRuleToMediaTags < ActiveRecord::Migration[5.1]
  def change
    add_column :media_tags, :xpath_rule, :string
  end
end
