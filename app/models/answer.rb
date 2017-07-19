class Answer < ActiveRecord::Base
    belongs_to :samsung
    has_many :comments
end
