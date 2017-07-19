class Samsung < ActiveRecord::Base
     has_many :answers, dependent: :destroy
     has_many :comments, through: :answer
end
