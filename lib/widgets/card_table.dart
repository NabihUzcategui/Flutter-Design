import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/single_card.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
        ]
        ),

          TableRow(children: [
          _SingleCard(color: Colors.greenAccent, icon: Icons.shop_2_outlined, text: 'Shopping'),
          _SingleCard(color: Colors.yellowAccent, icon: Icons.apartment_outlined, text: 'Aparment'),
        ]
        ),


          TableRow(children: [
          _SingleCard(color: Colors.redAccent, icon: Icons.security_outlined, text: 'Security'),
          _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
        ]
        ),


          TableRow(children: [
          _SingleCard(color: Colors.blue, icon: Icons.pie_chart_outline_rounded, text: 'General'),
          _SingleCard(color: Colors.orangeAccent, icon: Icons.person_add, text: 'Register'),
        ]
        ),

          TableRow(children: [
          _SingleCard(color: Colors.purple, icon: Icons.sports_bar_outlined, text: 'Sport'),
          _SingleCard(color: Colors.lightGreenAccent, icon: Icons.access_alarm_sharp, text: 'Alarm'),
        ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon, 
    required this.color, 
    required this.text
  }): super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return SingleCard(color: color, icon: icon, text: text);
  }
}


