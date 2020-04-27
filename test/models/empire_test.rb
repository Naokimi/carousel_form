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
require 'test_helper'

class EmpireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
