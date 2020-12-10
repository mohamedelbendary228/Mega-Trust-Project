import 'package:flutter/material.dart';

class CompaniesItemsList extends StatelessWidget {
  final String image;
  final String id;

  CompaniesItemsList({
    @required this.id,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
