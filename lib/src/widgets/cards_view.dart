import 'package:beats_app_flutter/src/models/product_model.dart';
import 'package:beats_app_flutter/src/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context).productos;

    return Container(
      width: double.infinity,
      height: 460.0,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        children: products.map((p) => _Card(p)).toList(),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final ProductModel product;

  _Card(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              _FirstColumn(product),
              SizedBox(width: 45.0),
              _CardDescription(product),
            ],
          ),
          Positioned(
            top: 90.0,
            left: 50.0,
            child: Image(
              image: AssetImage('assets/${product.url}'),
              width: 160.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardDescription extends StatelessWidget {
  final ProductModel product;

  const _CardDescription(this.product);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: size.width * 0.55,
          height: 340.0,
          color: Color(product.color),
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      product.titulo,
                      style: TextStyle(
                        color: Colors.white24,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.subtitulo,
                      style: TextStyle(
                        color: Colors.white24,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(product.nombre, style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Icon(FontAwesomeIcons.heart, color: Colors.white),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: size.width * 0.2,
                    child: Text(
                      '\$ ${product.precio}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Add to bag',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    width: size.width * 0.25,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirstColumn extends StatelessWidget {
  final ProductModel product;

  const _FirstColumn(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(FontAwesomeIcons.batteryFull, size: 15.0),
            SizedBox(width: 10.0),
            Text('${product.bateria}-Hour Batery',
                style: TextStyle(fontSize: 12.0)),
            SizedBox(width: 30.0),
            Icon(FontAwesomeIcons.wifi, size: 15.0),
            SizedBox(width: 10.0),
            Text('Wireless', style: TextStyle(fontSize: 12.0)),
          ],
        ),
      ),
    );
  }
}
