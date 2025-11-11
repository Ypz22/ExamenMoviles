import '../model/tree.dart';

class TreeController {
  static const double extraDiscountLimit = 1000;
  static const double extraDiscountRate = 0.15;
  static const double iva = 0.15;

  double calculateTotal(List<TreeModel> items) {
    for (var item in items) {
      if (item.quantity < 0) {
        throw Exception("Las cantidades no pueden ser negativas");
      }
    }

    int totalTrees = items.fold(0, (sum, item) => sum + item.quantity);
    if (totalTrees == 0) {
      throw Exception("Debe ingresar al menos una cantidad");
    }

    double subtotal = items.fold(0, (sum, item) => sum + item.subtotal);
    double indivDiscounts = items.fold(0, (sum, item) => sum + item.discount);

    double afterIndivDiscount = subtotal - indivDiscounts;

    if (totalTrees > extraDiscountLimit) {
      afterIndivDiscount *= (1 - extraDiscountRate);
    }

    double totalFinal = afterIndivDiscount * (1 + iva);

    return totalFinal;
  }
}
