require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'should not save article without title' do
    article = Article.new(body: 'This is the body of an article')

    article.save

    expect { article.reload }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
