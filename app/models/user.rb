# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :performance_data, class_name: 'PerformanceData'
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  
end
