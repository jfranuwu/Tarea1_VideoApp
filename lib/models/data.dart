import 'package:flutter/material.dart';
import 'package:app/models/cars.dart';

final listCategory = ['Deportivo', 'Casual', 'Viajero'];

final listCar = [
  Car(
    'Volkswagen Golf',
    'Modelo compacto',
    '1974',
    '20,000',
    4,
    [
      ImageCar(
        'images/golf.png',
        Color.fromARGB(184, 222, 18, 11),
      ),
      ImageCar(
        'images/golf_2.png',
        Color.fromARGB(103, 114, 114, 114),
      ),
      ImageCar(
        'images/golf_3.png',
        Color.fromARGB(228, 218, 218, 218),
      ),
    ],
  ),
  Car(
    'Volkswagen Passat',
    'Modelo familiar',
    '1973',
    '30,000',

    4,
    [
      ImageCar(
        'images/passat.png',
        Color.fromARGB(255, 101, 87, 58),
      ),
      ImageCar(
        'images/passat_2.png',
        Color.fromARGB(228, 218, 218, 218),
      ),
      ImageCar(
        'images/passat_3.png',
        Color.fromARGB(103, 114, 114, 114),
      ),
    ],
  ),
  Car(
    'Volkswagen Tiguan',
    'Modelo clásico',
    '1938',
    '40,000',
    4,
    [
      ImageCar(
        'images/tiguan.png',
        Color.fromARGB(228, 218, 218, 218),
      ),
      ImageCar(
        'images/tiguan_2.png',
        Color.fromARGB(184, 222, 18, 11),
      ),
      ImageCar(
        'images/tiguan_3.png',
        Color.fromARGB(103, 114, 114, 114),
      ),
    ],
  ),
];
