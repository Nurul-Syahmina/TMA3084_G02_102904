import 'dart:io';

void main() {
    print('=== PIZZA ORDER CALCULATOR ===');
    print('Pizza Prices:');
    print('Small = \$5');
    print('Medium = \$7');
    print('Large = \$10');

    String continueOrder = 'yes';

    while (continueOrder.toLowerCase() == 'yes') {
        print('\nEnter the size of the pizza (Small, Medium, Large):');
        String size = stdin.readLineSync()!.trim().toLowerCase();

        int price;
        switch (size) {
            case 'small':
                price = 5;
                break;
            case 'medium':
                price = 7;
                break;
            case 'large':
                price = 10;
                break;
            default:
                print('Invalid size entered. Please try again.');
                continue;
        }

        print('Enter the quantity of pizzas:');
        int? quantity = int.tryParse(stdin.readLineSync()!);

        if (quantity == null || quantity <= 0) {
            print('Invalid quantity entered. Please try again.');
            continue;
        }

        int totalCost = price * quantity;

        print('Total cost for $quantity $size pizza(s): \$${totalCost} USD');

        print('\nDo you want to order another pizza? (yes/no)');
        continueOrder = stdin.readLineSync()!.trim().toLowerCase();
    }   

    print('\nThank you for your order!');
}