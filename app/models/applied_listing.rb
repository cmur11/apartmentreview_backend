class AppliedListing < ApplicationRecord
    belongs_to :listing
    belongs_to :user
end
