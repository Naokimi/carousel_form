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
    portraits = {}
    portraits['Humanoid'] = %w[6/6e/Human 5/5c/Humanoid_02 1/1b/Humanoid_03 6/6a/Humanoid_04 7/7d/Humanoid_05]
    portraits['Machine'] = %w[8/8c/Alien_AI f/f3/Lithoid_machine e/e6/Synthetic_dawn_portrait_humanoid
      c/c4/Synthetic_dawn_portrait_mammalian 6/62/Synthetic_dawn_portrait_reptilian
      9/90/Synthetic_dawn_portrait_avian e/ef/Synthetic_dawn_portrait_arthopoid
      9/9d/Synthetic_dawn_portrait_molluscoid c/c7/Synthetic_dawn_portrait_fungoid
      4/4f/Synthetic_dawn_portrait_plantoid]
    portraits
  end
end
