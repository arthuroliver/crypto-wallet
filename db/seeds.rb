# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Create.coin!(
  description: "Bitcion",
  acronym: "BTC",
  url_iage: "https://images-americanas.b2w.io/produtos/01/00/img/1990152/9/1990152993_1GG.jpg"
)

Create.coin!(
  description: "Ethereum",
  acronym: "ETH",
  url_iage: "https://d33wubrfki0l68.cloudfront.net/fcd4ecd90386aeb50a235ddc4f0063cfbb8a7b66/4295e/static/bfc04ac72981166c740b189463e1f74c/40129/eth-diamond-black-white.jpg"
)
