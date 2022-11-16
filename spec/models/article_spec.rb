require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'should not save article without title' do
    article = Article.new(body: 'This is the body of an article')

    expect(article.save).to be(false)
  end

  it 'should not save article without body' do
    article = Article.new(title: 'This is a title')

    article.save

    expect(article.save).to be(false)
  end

  it 'should not save article with body less than 10 characters' do
    article = Article.new(title: 'This is a title', body: 'Less than')

    article.save

    expect(article.save).to be(false)
  end
end
