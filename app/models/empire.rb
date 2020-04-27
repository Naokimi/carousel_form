# == Schema Information
#
# Table name: empires
#
#  id                       :bigint           not null, primary key
#  multiplayer_session_code :string
#  name                     :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class Empire < ApplicationRecord
  has_one :species
end
