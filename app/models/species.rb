# == Schema Information
#
# Table name: species
#
#  id         :bigint           not null, primary key
#  archetype  :string
#  biography  :text
#  name       :string
#  portrait   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  empire_id  :bigint           not null
#
# Indexes
#
#  index_species_on_empire_id  (empire_id)
#
# Foreign Keys
#
#  fk_rails_...  (empire_id => empires.id)
#
class Species < ApplicationRecord
  belongs_to :empire
end
