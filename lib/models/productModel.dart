class Product{
  final String title;
  final String description;
  final String image;
  final String color;
  final int price;


 Product({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
   required this.price,
  });
}
final List<Product>products=[
  Product(
title:"suit",
description:" very stylish suit with long jacket",
image:"images/1.png",
color:"red",
price:120,
),
  Product(
    title:"jacket",
    description:" long jacket with many colors",
    image:"images/2.png",
    color:"green",
    price:500,
  ),
  Product(
    title:"shoes",
    description:" snickers",
    image:"images/3.png",
    color:"white",
    price:300,
  ),
  Product(
    title:"craft",
    description:" very stylish craft  available basic colors",
    image:"images/4.png",
    color:"red",
    price:450,
  ),
];