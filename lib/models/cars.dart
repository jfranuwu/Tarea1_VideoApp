import 'package:flutter/material.dart';

class ImageCar {
  ImageCar(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Car {
  Car(
    this.name,
    this.modelo,
    this.anio,
    this.precio, // Cambia el tipo a String? para permitir valores null
    this.punctuation,
    this.listImage,
  );
  final String name;
  final String modelo;
  final String anio;
  final String? precio; 
  final int punctuation;
  final List<ImageCar> listImage;
}
