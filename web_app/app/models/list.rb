class List < ApplicationRecord
    # refileが指定のカラムにアクセスできるように
    attachment :image

    validates :title, presence: true
    validates :body,  presence: true
    validates :image, presence: true
end
