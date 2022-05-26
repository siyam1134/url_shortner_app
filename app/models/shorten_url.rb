class ShortenUrl < ApplicationRecord
  validates :original_url, format: { with: URL_REGEXP, message: 'You provided invalid URL' }

end
