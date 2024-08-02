void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var roti = MenuItem("Veg. Roti", 1.99);
  var tropiPlate = MenuItem("Tropical Plate", 5.99);
  var pizza =
      Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  // print(noodles.toString());
  // print(pizza.toString());

  var foods = Collection(
    'Menu Items',
    [noodles, pizza, roti, tropiPlate]
  );

  print(foods.randomItem());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString();
  }

  @override
  String toString() {
    return neatString();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  String toppingString() {
    String toppingString = "";
    for (int i = 0; i < this.toppings.length; i++) {
      toppingString += this.toppings[i];
      if (i != (this.toppings.length - 1)) {
        toppingString += ", ";
      } else {
        toppingString += ".";
      }
    }
    return toppingString;
  }

  // Sometimes we may want to execute a different function over the parent class one because we are dealing with different attributes
  // This is why we include the @override annotation
  @override
  String neatString() {
    return "One portion of " +
        this.title +
        " costs \$" +
        this.price.toString() +
        ". (Toppings: " +
        this.toppingString() +
        ")";
  }
}

class Collection<Type> {
  String name;
  List<Type> data;

  Collection(this.name, this.data);

  Type randomItem() {
    data.shuffle();

    return data[0];
  }
}
