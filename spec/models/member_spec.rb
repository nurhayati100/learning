# == Schema Information
#
# Table name: Members
#
#  email
#  encrypted_password
#  reset_password_token
#  reset_password_sent_at
#  remember_created_at
#  sign_in_count
#  current_sign_in_at
#  current_sign_in_ip
#  last_sign_in_ip
#  created_at
#  updated_at
#  username
#  current_sign_in_at

require 'spec_helper'

describe Member do

  # Attributes
  #=============================================================================

  describe 'attribute' do
    describe :email do
      it { should have_db_column(:email) }
    end

    describe :category do
      it { should have_db_column(:username) }
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
