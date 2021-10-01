# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do 
        described_class.new(title: 'harry potter')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    subject do 
        described_class.new(author: 'J. K. Rowling')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.author = nil
        expect(subject).not_to be_valid
    end

    subject do 
        described_class.new(published-date: 1999-10-06)
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.published-date = nil
        expect(subject).not_to be_valid
    end

    subject do 
        described_class.new(price: 13.99)
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.price = nil
        expect(subject).not_to be_valid
    end
end