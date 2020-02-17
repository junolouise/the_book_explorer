# frozen_string_literal: true

class BookList < ApplicationRecord
  mount_uploader :csv, CsvUploader
end
