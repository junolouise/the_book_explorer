class BookList < ApplicationRecord
  mount_uploader :csv, CsvUploader
end
