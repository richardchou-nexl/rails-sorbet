# typed: true

class Post < ApplicationRecord
  extend T::Sig

  sig { returns(String) }
  def title_and_body
    T.must(title) + T.must(body)
  end

  sig { params(new_title: String).returns(String) }
  def set_title(new_title)
    self.title = new_title
  end
end
