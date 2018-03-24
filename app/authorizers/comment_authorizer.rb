class CommentAuthorizer < ApplicationAuthorizer

  def self.creatable_by?(user)
    true 
  end

end