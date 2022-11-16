require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'should not save article without title' do
    article = Article.new(body: 'This is the body of an article')

    expect(article.save).to be(false)
  end

  it 'should not save article without body' do
    article = Article.new(title: 'This is a title')

    expect(article.save).to be(false)
  end

  it 'should not save article with body less than 10 characters' do
    article = Article.new(title: 'This is a title', body: 'Less than')

    expect(article.save).to be(false)
  end

  it 'should save valid article' do
    article = Article.new(title: 'Energy', body: 'The future of energy rests on...', status: 'draft')

    expect(article.save).to be(true)
  end

  it 'should accept status "archived"' do
    article = Article.new(title: 'Greatest showman', body: 'A musical journey you will never forget...',
                          status: 'archived')

    expect(article.save).to be(true)
  end

  it 'should accept status "draft"' do
    article = Article.new(title: 'Greatest showman', body: 'A musical journey you will never forget...',
                          status: 'draft')

    expect(article.save).to be(true)
  end
end
