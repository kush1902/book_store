import 'package:flutter/material.dart';
import 'package:book_store/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "product1",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product2",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product3",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product4",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product5",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product6",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product7",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    },
    {
      "name": "product8",
      "picture": "product image",
      "old price": "420",
      "price": "240",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.product_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        product_detail_name: product_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "$prod_price",
                        style: TextStyle(color: Colors.red),
                      ),
                      subtitle: Text(
                        "$prod_old_price",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
