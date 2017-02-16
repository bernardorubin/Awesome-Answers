class Answer < ApplicationRecord
  # This gives us handy methods on the answer model to query associated question
  # We will be able to do something like
  # a = Answer.last
  # q = a.question
  belongs_to :question

  validates :body, presence: true, length: {minimum: 4}
end
