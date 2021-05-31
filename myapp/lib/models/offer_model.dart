import 'package:flutter/material.dart';

class Offer {
  final String name;
  final String offerImage;
  final double productPrice;

  const Offer({
    @required this.name,
    @required this.offerImage,
    @required this.productPrice,
  });
}
