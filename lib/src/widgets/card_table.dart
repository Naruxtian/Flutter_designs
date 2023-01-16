import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all_rounded, 
              color: Colors.blue, 
              text: 'General'
            ),
            _SingleCard(
              icon: Icons.bus_alert_outlined, 
              color: Colors.purpleAccent, 
              text: 'Transport'
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_basket_outlined, 
              color: Colors.pink, 
              text: 'Shopping'
            ),
            _SingleCard(
              icon: Icons.blinds_closed, 
              color: Colors.orange, 
              text: 'Bills'
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_creation_outlined, 
              color: Colors.blueAccent, 
              text: 'Enterainment'
            ),
            _SingleCard(
              icon: Icons.fastfood_outlined, 
              color: Colors.green, 
              text: 'Grocery'
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.video_call, 
              color: Colors.amber, 
              text: 'Meetings'
            ),
            _SingleCard(
              icon: Icons.comment, 
              color: Colors.red, 
              text: 'Chat'
            ),
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
  required this.icon, 
  required this.color, 
  required this.text
  }); 
  
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'basic_design');
      },
      child: _CardBackground(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
    
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child:  Icon(icon, size: 35, color: Colors.white),
                  ),
          
                  const SizedBox(height: 10),
          
                  Text(text, style: TextStyle(color: color, fontSize: 18)),
                  
                ],
              )
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}