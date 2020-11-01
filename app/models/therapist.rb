class Therapist < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :therapist_type

  validates :name, :therapist_type, :exp_year, presence: true

  with_options numericality: { other_than:0 } do
    validates :therapist_type_id
  end
end