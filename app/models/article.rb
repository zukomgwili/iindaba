class Article < ApplicationRecord
  validates(:title, presence: true)
  validates(:body, presence: true, length: { minimum: 10 })
  validates(:status, inclusion: { in: %w[archived draft published] })
end
