import 'package:flutter/material.dart';
import 'package:latihan2/model/poli.dart';
import 'package:latihan2/ui/poli_detail.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;
  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(poli.namaPoli),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
    );
  }
}
