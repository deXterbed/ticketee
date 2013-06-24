# This migration comes from forem (originally 20130623204949)
class AddPostsCountToForemTopics < ActiveRecord::Migration
  def change
    add_column :forem_topics, :posts_count, :integer, default: 0
  end
end
