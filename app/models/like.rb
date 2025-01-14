class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  after_create :update_likes_counter

  private

  def update_likes_counter
    post.increment!(:likes_counter)
  end
end
