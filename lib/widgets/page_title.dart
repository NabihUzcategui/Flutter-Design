import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        margin: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transaction', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox( height: 10),
            Text('Calssify this transaction into particular category', style: TextStyle(fontSize: 18, color: Colors.white)),
    
          ]
      ),
      ),
    );
  }
}