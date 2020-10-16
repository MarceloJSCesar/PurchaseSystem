import 'dart:io';

/*

  The Problem:
 - I want you to show me all your items that you have and following by their prices !
 - And you have to ask me what i want to buy !
 - Everytime i say what i want this especific items, automatically should go to my cart !
 - and give me chance to remove when i want !
 - show me up when i say total , see the items and following by their prices !
 - and when i say close , to finish my buy !

*/

List<String> items = ["Apple", "Orange", "Limon", "Pear", "StrawBerry"];
List<double> prices = [2, 1.9, 3.2, 4, 5.1];
List<double> pricesCart = [];
List<String> cart = [];

double wallet = 36.3;
bool condition = true;

main() {
  print('==== Welcome To FruitStore =====');
  print('\n');

  print('This is our Products');

  OurProducts();

  while (condition) {
    print('==== Write What You want ====');
    String ask = stdin.readLineSync();
    if (ask == 'add') {
      Add();
    } else if (ask == 'print') {
      ShowItems(cart);
    } else if (ask == 'remove') {
      Remove();
    } else if (ask == 'close') {
      Close();
    } else if (ask == 'total') {
      Total();
    } else if (ask == 'price') {
      Price();
    } else if (ask == 'wallet') {
      Wallet();
    } else if (ask == 'buy') {
      Buy();
    }
  }
}

OurProducts() {
  var apple = items[0];
  var orange = items[1];
  var limon = items[2];
  var pear = items[3];
  var strawberry = items[4];

  var appleP = prices[0];
  var orangeP = prices[1];
  var limonP = prices[2];
  var pearP = prices[3];
  var strawberryP = prices[4];

  print(
      '$apple and cost $appleP \n $orange  and cost $orangeP \n $limon  and cost $limonP \n $pear  and cost $pearP \n $strawberry  and cost $strawberryP');
}

ShowItems(cart) {
  print('This is what you bought : $cart');
}

Remove() {
  print('What You Want To Remove ?');
  String askR = stdin.readLineSync();
  cart.remove(askR);
  print('==== Item Removed ====');
}

Add() {
  print('What You Want to buy ?');
  String products = stdin.readLineSync();

  cart.add(products);
  print('==== Product added in cart correctly ====');
}

Close() {
  condition = false;
  print('==== Buy Closed ====');
}

var appleP = prices[0];
var orangeP = prices[1];
var limonP = prices[2];
var pearP = prices[3];
var strawberryP = prices[4];

Total() {
  if (cart.length == 0) {
    print('Nothing in cart !! \n ==== Buy Closed ====');
    condition = false;
  } else if (cart.length == 1) {
    print(
        'All things you bought : $cart \n And everything will cost ${appleP}');
  } else if (cart.length == 2) {
    print(
        'All things you bought : $cart \n And everything will cost ${appleP + orangeP}');
  } else if (cart.length == 3) {
    print(
        'All things you bought : $cart \n And everything will cost ${appleP + orangeP + limonP}');
  } else if (cart.length == 4) {
    print(
        'All things you bought : $cart \n And everything will cost ${appleP + orangeP + limonP + pearP}');
  } else if (cart.length == 5) {
    print(
        'All things you bought : $cart \n And everything will cost ${appleP + orangeP + limonP + pearP + strawberryP}');
  }
}

Price() {
  OurProducts();
}

Wallet() {
  print('You got $wallet dollars in your wallet');
}

Buy() {
  TakeOutMoney();
  print('==== Bought Correctly ====');
}

TakeOutMoney() {
  var one = appleP;
  var two = appleP + orangeP;
  var three = appleP + orangeP + limonP;
  var four = appleP + orangeP + limonP + pearP;
  var five = appleP + orangeP + limonP + pearP + strawberryP;

  if (cart.length == 0) {
    print('You aren\'t bought nothing yet');
  } else if (cart.length == 1) {
    print('You got now $wallet dollars in your wallet');
    wallet -= one;
  } else if (cart.length == 2) {
    print('You got now $wallet dollars in your wallet');
    wallet -= two;
  } else if (cart.length == 3) {
    print('You got now $wallet dollars in your wallet');
    wallet -= three;
  } else if (cart.length == 4) {
    print('You got now $wallet dollars in your wallet');
    wallet -= four;
  } else if (cart.length == 5) {
    print('You got now $wallet dollars in your wallet');
    wallet -= five;
  }
}
