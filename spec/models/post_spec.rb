# == Schema Information
#
# Table name: Post
#
#  title          :string
#  text           :string
#  created_at     :datetime
#  updated_at     :datetime


require 'spec_helper'

describe Post do

  # Assosiation
  #=============================================================================

  describe 'associations' do
    it { should have_many(:says).dependet(:destroy) }
  end


  # Attributes
  #=============================================================================

  describe 'attribute' do
    describe :title do
      it { should have_db_column(:title) }
      it { should validate_presence_of(:title)}
    end

    describe :text do
      it { should have_db_column(:text) }
      it { should validate_presence_of(:text)}
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
