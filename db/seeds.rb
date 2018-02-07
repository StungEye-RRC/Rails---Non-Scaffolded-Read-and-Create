Product.destroy_all

1000.times do
  Product.create(
      title: Faker::Commerce.unique.product_name,
      description: "Surprisingly this product is made out of #{Faker::Commerce.material}.",
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.number(3))
end

puts "Created #{Product.count} products."
