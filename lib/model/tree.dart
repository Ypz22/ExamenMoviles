class TreeModel {
  final String type;
  final int quantity;

  TreeModel({required this.type, required this.quantity});

  double get unitPrice {
    switch (type.toLowerCase()) {
      case "palto":
        return 1.2;
      case "limon":
        return 1.0;
      case "chirimoyo":
        return 0.98;
      default:
        return 0;
    }
  }

  double get discountRate {
    if (quantity > 300) {
      switch (type.toLowerCase()) {
        case "palto":
          return 0.18;
        case "limon":
          return 0.20;
        case "chirimoyo":
          return 0.19;
      }
    } else if (quantity > 100) {
      switch (type.toLowerCase()) {
        case "palto":
          return 0.10;
        case "limon":
          return 0.125;
        case "chirimoyo":
          return 0.145;
      }
    }
    return 0.0;
  }

  double get subtotal => unitPrice * quantity;

  double get discount => subtotal * discountRate;

  double get totalAfterDiscount => subtotal - discount;
}
