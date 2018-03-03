# == Schema Information
#
# Table name: polls
#
#  id      :integer          not null, primary key
#  user_id :integer
#  title   :string
#

class Poll < ApplicationRecord
  belongs_to :author,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User,
    optional: true

  has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question
end