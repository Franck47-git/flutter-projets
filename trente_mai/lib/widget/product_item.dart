import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trente_mai/models/panier.dart';
import 'package:trente_mai/providers/product.dart';
import 'package:trente_mai/providers/products.dart';
import '../screen/product_detailScreen.dart';

class ProductItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItems(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    //final product = Provider.of<Product>(context, listen: false);

    print("build products");

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: GridTile(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(title),
            // leading: IconButton(
            //     color: Theme.of(context).accentColor,
            //     icon: Icon(true ? Icons.favorite : Icons.favorite_border),
            //     onPressed: () {
            //       Provider.of<Products>(context, listen: false)
            //           .toggleFavoriteStatus(id);
            //       //product.toggleFavoriteStatus();
            //     }),
            leading: Consumer<Products>(builder: (cxt, products, child) {
              bool favoris = products.item
                  .firstWhere((element) => element.id == id)
                  .isFovorite;
              return IconButton(
                  color: Theme.of(context).accentColor,
                  icon: Icon(favoris ? Icons.favorite : Icons.favorite_border),
                  onPressed: () {
                    Provider.of<Products>(context, listen: false)
                        .toggleFavoriteStatus(id);
                    //product.toggleFavoriteStatus();
                  });
            }),
            trailing: IconButton(
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Provider.of<PanierProvider>(context, listen: false)
                      .addInPanier(title);
                  print(Provider.of<PanierProvider>(context, listen: false)
                      .item.length);
                }),
          ),
        ),
      ),
    );
  }
}
