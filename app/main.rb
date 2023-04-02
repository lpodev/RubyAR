require_relative 'connection'
require_relative 'models'

company = Company.first
company.authored_comments.create!(body: 'This is a comment', target: Product.first)
Supplier.first.comments.create!(body: 'This is a comment', author: company)

angry = Individual.first
angry.authored_comments.create!(body: 'Ne pas acheter!', target: Product.first)
Product.first.comments.create!(body: 'Ne pas acheter!', author: angry)

puts 'Comments de #{company}:'
company.authored_comments.each do |comment|
  puts comment.body
end

puts 'Commentaires de #{angry}:'
angry.authored_comments.each do |comment|
  puts comment.body
end
