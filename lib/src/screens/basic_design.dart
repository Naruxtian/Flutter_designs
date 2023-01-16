import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const[
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          //Titulo
          Title(),

          //Seccion de botones
          ButtonSection(),

          //Descripcion
          Description()

        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschien Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red, size: 30),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const[
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map_sharp, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue),
        Text(text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: 
      const Text('Proident reprehenderit ipsum consequat qui id nostrud aute elit est pariatur. Do labore sit minim id aliqua. Aute adipisicing aliqua ut nostrud sit. Id excepteur aute magna consectetur ullamco sunt ullamco do labore. Officia et et exercitation consequat deserunt nulla tempor adipisicing elit non dolor anim laborum qui. Sunt ut in et anim quis sit tempor dolore. Aliqua officia irure aliqua minim dolore nulla labore ipsum ea excepteur consectetur ut deserunt aute.', 
      textAlign: TextAlign.justify,)
    );
  }
}