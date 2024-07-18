void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var pizza = Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  print(noodles.neatString());
  print(pizza.neatString());
}

class MenuItem {
  // Dart would have you ideally assign values to the properties of the class upon initiating them.
  // But since most of the time we invoke new different classes, well use a constructor method.
  // The constructor method populates the information inside the classes.
  // A class, simply put, is just an object with methods.
  String title;
  double price;

  MenuItem(this.title, this.price);

  neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  // Super invokes the parent class.
  // There are two ways of doing this.
  // Pizza(this.toppings, String title, double price): super(title, price);
  Pizza(this.toppings, super.title, super.price); // this is the shorthand version
}