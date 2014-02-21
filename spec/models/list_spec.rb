# == Schema Information
#
# Table name: Lists
#
#  title          :string
#  category       :string
#  body           :integer
#  published      :integer
#  created_at     :datetime
#  updated_at     :datetime
#  attachment     :string

require 'spec_helper'


describe List do

  # Attributes
  #=============================================================================

  describe 'attribute' do
    describe :title do
      it { should have_db_column(:title) }
      it { should validate_presence_of(:title)}
    end

    describe :category do
      it { should have_db_column(:category) }
      it { should validate_presence_of(:category)}
    end

    describe :body do
      it { should have_db_column(:body) }
      it { should validate_presence_of(:body)}
    end

    describe :published do
      it { should have_db_column(:published) }
      it { should validate_presence_of(:published)}
    end
  end

  # Instance Methods
  # ============================================================================
  describe 'instance methods' do

  end


  # JSON Output
  # Test work-around hack for as_json bug in Rails
  #=============================================================================

  describe 'as_json' do

  end
end


