import 'package:flutter/material.dart';
import 'package:yepezjefferson_examen/controller/tree_controller.dart';
import 'package:yepezjefferson_examen/model/tree.dart';
import 'package:yepezjefferson_examen/view/widgets/button.dart';
import 'package:yepezjefferson_examen/view/widgets/input.dart';

class TreeView extends StatefulWidget{
  @override
  _TreeViewState createState() => _TreeViewState();
}

class _TreeViewState extends State<TreeView> {
  final TreeController controller = TreeController();
  int paltoQty = 0;
  int limonQty = 0;
  int chiriQty = 0;

  double total = 0;
  String message = "";

  void calculate() {
    List<TreeModel> items = [];

    if (paltoQty > 0) {
      items.add(TreeModel(type: "palto", quantity: paltoQty));
    }
    if (limonQty > 0) {
      items.add(TreeModel(type: "limon", quantity: limonQty));
    }
    if (chiriQty > 0) {
      items.add(TreeModel(type: "chirimoyo", quantity: chiriQty));
    }

    try {
      final result = controller.calculateTotal(items);

      Navigator.pushNamed(context, '/result', arguments: result);

    } catch (e) {
      setState(() {
        message = e.toString().replaceAll("Exception:", "").trim();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compra de árboles"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputTree(label: "Cantidad de Paltos", onChanged: (v) => paltoQty = int.tryParse(v) ?? 0),
            InputTree(label:"Cantidad de Limones", onChanged: (v) => limonQty = int.tryParse(v) ?? 0),
            InputTree(label: "Cantidad de Chirimoyos", onChanged: (v) => chiriQty = int.tryParse(v) ?? 0),
            const SizedBox(height: 25),
            ButtonCalculate(onPressed: calculate),
            const SizedBox(height: 20),
            const SizedBox(height: 15),

          ],
        ),
      ),
    );
  }

}