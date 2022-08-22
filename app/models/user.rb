class User < ApplicationRecord
  belongs_to :visa_detail
  has_and_belongs_to_many :relationships
  
  validates :family_name, 
            :given_names,
            :gender,
            :date_of_birth,
            :passport_number,
            :country_of_passport,
            :passport_nationality,
            :date_of_issue,
            :date_of_expired,
            :issueing_authority, presence: true,  unless: Proc.new { |record| record.visa_detail.is_more_occasion }
end
