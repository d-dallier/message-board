class Message < ActiveRecord::Base
    #名前は必須で20文字以内
    validates :name , length: {maximum: 20}, presence: true
    #内容は必須で2～30文字
    validates :body , length: { minimum: 2, maximum: 30}, presence: true
    #年齢は0才からで、数字のみ
    validates :age , length: {minimum: 1, maximum:3}, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
