class Article < ApplicationRecord
  validates(:title, presence: true)
  validates(:body, presence: true, length: { minimum: 10 })
  validates(:status, inclusion: { in: ['draft'] })
end
