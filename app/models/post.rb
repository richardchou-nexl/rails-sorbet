# typed: true

class Post < ApplicationRecord
  extend T::Sig

  sig { returns(String) }
  def title_and_body
    T.must(self.title) + T.must(self.body)
  end
end
