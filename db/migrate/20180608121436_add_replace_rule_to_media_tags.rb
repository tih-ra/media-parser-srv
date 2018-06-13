class AddReplaceRuleToMediaTags < ActiveRecord::Migration[5.1]
  def change
    add_column :media_tags, :replace_rule, :string
  end
end
