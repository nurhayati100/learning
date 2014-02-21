# == Schema Information
#
# Table name: Say
#
#  commenter          :string
#  body               :string
#  post_id            :integer
#  created_at         :datetime
#  updated_at         :datetime

require 'spec_helper'

describe Say do

  # Assosiation
  #=============================================================================

  describe 'associations' do
    it { should belong_to(:post) }
  end


  # Attributes
  #=============================================================================

  describe 'attribute' do
    describe :commenter do
      it { should have_db_column(:commenter)
    end

    describe :body do
      it { should have_db_column(:body) }
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