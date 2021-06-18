import 'package:flutter/material.dart';
import 'package:live_shop_appli/providers/category_model.dart';
import 'package:provider/provider.dart';
import '../providers/providers_product.dart';


class SecondRowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductsProviders>(context).items;
    final category = Provider.of<CategoryProvider>(context).category;

    return Container(
      color: Colors.blueGrey,
      child: DefaultTabController(
        length: category.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TabBar(
                      indicatorColor: Colors.transparent,
                      indicatorWeight: 5.0,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      tabs: category
                          .map((cat) => Column(
                                children: [
                                  Icon(
                                    cat.icon,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(cat.titre,
                                      style: TextStyle(color: Colors.black, fontFamily:"ViaodaLibre")),
                                ],
                              ))
                          .toList()),
                ],
              ),
            ),
          ),
          body: TabBarView(
              children: category
                  .map((e) => SingleChildScrollView(
                    child: Column(
                          children: [
                            Container(
                            
                              child: Column(
                                children: [                                                                          
                                 Text("Design", style: TextStyle(fontSize: 40, fontFamily: "DancingScript"),)
                                ],
                              ),
                            ),
                          ],
                        ),
                  ))
                  .toList()),
        ),
      ),
    );
  }
}
