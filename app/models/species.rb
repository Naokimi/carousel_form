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

  ARCHETYPES = %w[Humanoid Machine]
  validates :archetype, inclusion: { in: ARCHETYPES }

  def self.portraits
    url = 'https://stellaris.paradoxwikis.com/images/'
    species = %w[6/6e/Human 5/5c/Humanoid_02 1/1b/Humanoid_03 6/6a/Humanoid_04 7/7d/Humanoid_05]
    species.map { |sp| url + sp + '.png'}
  end
end
