// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  String nombre;
  String url;
  double precio;
  bool favorito;
  String titulo;
  String subtitulo;
  int bateria;
  int color;

  ProductModel({
    this.nombre,
    this.url,
    this.precio,
    this.favorito,
    this.titulo,
    this.subtitulo,
    this.bateria,
    this.color,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => new ProductModel(
        nombre: json["nombre"],
        url: json["url"],
        precio: json["precio"],
        favorito: json["favorito"],
        titulo: json["titulo"],
        subtitulo: json["subtitulo"],
        bateria: json["bateria"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "url": url,
        "precio": precio,
        "favorito": favorito,
        "titulo": titulo,
        "subtitulo": subtitulo,
        "bateria": bateria,
        "color": color,
      };
}
