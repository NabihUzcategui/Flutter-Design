import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //imagen ppal
        const Image(image: AssetImage('assets/dakar2023.jpg')),

        //1era sección Titulo
        const Title(),

        //2da sección botones
        const ButtonSection(),

        //3ero sección descripción
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
                'Laborum amet qui nostrud labore deserunt culpa eu aliquip minim exercitation. Veniam nostrud dolor occaecat fugiat nulla non Lorem cillum. Enim in nostrud aliqua consequat enim quis esse consectetur cupidatat qui officia labore eu. Ipsum fugiat nisi ut cillum proident do ex. Pariatur id nulla nostrud in minim minim cupidatat. Voluptate quis occaecat occaecat ullamco deserunt eiusmod proident aliquip labore mollit pariatur nulla ea. Dolor fugiat aliqua commodo nisi quis exercitation quis in.')),
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.room_outlined,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share_rounded,
            text: 'Share',
          ),
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
        Icon(
          icon,
          color: Colors.blue[400],
          size: 25,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue[400], fontSize: 18),
        ),
      ],
    );
  }
}
