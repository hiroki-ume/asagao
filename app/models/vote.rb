class Vote < ApplicationRecord
  belongs_to :member
  belongs_to :entry

  validate do
    unless member && member.votable_for?(entry)
      errors.add(:base, :invalid)
    end
  end
end
