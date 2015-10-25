# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :title, :created_at, :updated_at
end
