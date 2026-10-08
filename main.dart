// Needed to read what the user types (stdin)
import 'dart:io';

void main() {
  // Show the prices once
  print('========================================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  // 'y' means the user wants to order. Starts as 'y' so the first order always happens.
  String orderAnother = 'y';

  // Initialize the total payment to 0
  int totalPayment = 0;

  // Repeat the order while the user answers 'y'
  while (orderAnother == 'y') {
    // Ask for the pizza size
    print('Please enter your pizza size (small, medium, or large):');
    String pizzaSize = stdin.readLineSync()!.trim().toLowerCase();

    // Ask for the quantity
    print('How many pizzas do you want of $pizzaSize?');
    int pizzaQuantity = int.parse(stdin.readLineSync()!);

    // Use a switch to calculate the total payment
    int orderPayment = 0;
    switch (pizzaSize) {
      case 'small':
        orderPayment = 5 * pizzaQuantity;
        break;
      case 'medium':
        orderPayment = 7 * pizzaQuantity;
        break;
      case 'large':
        orderPayment = 10 * pizzaQuantity;
        break;
      default:
        print('Invalid size');
    }

    // Add the order payment to the total payment
    totalPayment += orderPayment;

    // Print the total
    print('Your Total Payment is: \$$totalPayment');

    // Ask whether to order again
    print('Order another pizza? (y/n)');
    orderAnother = stdin.readLineSync()!.trim().toLowerCase();
  }

  print('Thank you for your order!');
}
