import '../model/tree.dart';

class TreeController {
  static const double extraDiscountLimit = 1000;
  static const double extraDiscountRate = 0.15;
  static const double iva = 0.12;

  double calculateTotal(List<TreeModel> items) {

    for (var item in items) {
      if (item.quantity < 0) {
        throw Exception("Las cantidades no pueden ser negativas");
      }
    }
    final totalTrees = items.fold(0, (sum, item) => sum + item.quantity);
    if (totalTrees == 0) {
      throw Exception("Debe ingresar al menos una cantidad");
    }
    double subtotal = items.fold(0, (sum, item) => sum + item.subtotal);
    double discounts = items.fold(0, (sum, item) => sum + item.discount);

    double totalAfterDiscounts = subtotal - discounts;

    if (totalTrees > extraDiscountLimit) {
      totalAfterDiscounts -= totalAfterDiscounts * extraDiscountRate;
    }

    double totalFinal = totalAfterDiscounts * (1 + iva);

    return totalFinal;
  }
}