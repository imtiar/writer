class Word < ApplicationRecord
  belongs_to :user

  attr_accessor :message

  validates :line1, length: { in: 3..6 } 
  validates :line2, length: { in: 6..8 }  # => {:message => '名前を入力してください'}
  validates :line3, length: { in: 4..6 }  # => {:message => '名前を入力してください'}
end
