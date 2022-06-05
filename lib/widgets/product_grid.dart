import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productProvider.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Cara ambil data provider
    final productData = Provider.of<AllProduct>(context);
    final allProductData = productData.products;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProductData.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProductData[i].id.toString(),
        allProductData[i].title.toString(),
        allProductData[i].imageUrl.toString(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
