class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final int rating;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.rating,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "Banana",
      description: "7pcs, Priceg",
      price: 70.0,
      imagePath: "assets/images/grocery_images/green_banana.png",
      rating: 4),
  GroceryItem(
      id: 2,
      name: "Peas",
      description: "1kg, Priceg",
      price: 50.0,
      imagePath: "assets/images/grocery_images/pea.png",
      rating: 4),
  GroceryItem(
      id: 3,
      name: "Chilli",
      description: "1kg, Priceg",
      price: 140.0,
      imagePath: "assets/images/grocery_images/chilli.png",
      rating: 5),
  GroceryItem(
      id: 4,
      name: "Ginger",
      description: "250gm, Priceg",
      price: 28.0,
      imagePath: "assets/images/grocery_images/ginger.png",
      rating: 4),
  GroceryItem(
      id: 5,
      name: "Papad",
      description: "250gm, Priceg",
      price: 30.0,
      imagePath: "assets/images/grocery_images/papad.png",
      rating: 5),
  GroceryItem(
      id: 6,
      name: "Curd",
      description: "500ml, Priceg",
      price: 22.0,
      imagePath: "assets/images/grocery_images/curd.png",
      rating: 3),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Test",
      description: "355ml, Price",
      price: 1.99,
      imagePath: "assets/images/beverages_images/diet_coke.png",
      rating: 5),
  GroceryItem(
      id: 8,
      name: "Test",
      description: "325ml, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/sprite.png",
      rating: 5),
  GroceryItem(
      id: 8,
      name: "Test",
      description: "2L, Price",
      price: 15.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png",
      rating: 5),
  GroceryItem(
      id: 9,
      name: "Test",
      description: "2L, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/orange_juice.png",
      rating: 5),
  GroceryItem(
      id: 10,
      name: "Test",
      description: "325ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/coca_cola.png",
      rating: 5),
  GroceryItem(
      id: 11,
      name: "Test",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/pepsi.png",
      rating: 5),
];
