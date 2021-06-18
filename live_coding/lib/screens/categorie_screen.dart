import 'package:flutter/material.dart';
import 'package:live_coding/models/categorie.dart';

class CategorieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView(
      //     padding: EdgeInsets.all(15),
      //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //         crossAxisSpacing: 20,
      //         mainAxisSpacing: 20,
      //         maxCrossAxisExtent: 200,
      //         childAspectRatio: 1.5),
      //     children: Telephone.map((element) => Container(
      //           alignment: Alignment.center,
      //           child: Text(element.title),
      //           color: element.color,
      //         )).toList()));

      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5),
        children: Telephone.map((element) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/detail-categorie');
              },
              child: CategorieItem(
                color: element.color,
                title: element.title,
              ),
            )).toList(),
      ),
    );
  }
}

class CategorieItem extends StatelessWidget {
  final Color color;
  final String title;

  const CategorieItem({Key key, this.color, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
