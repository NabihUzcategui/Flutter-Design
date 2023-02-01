import '../widgets/custom_botton_navigation.dart';
import '../widgets/page_title.dart';
import 'package:flutter_design/widgets/background.dart';
import 'package:flutter_design/widgets/card_table.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //background
          BackGround(),

          //home body o scroll del body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //titulos
          PageTitle(),

          //card table
          CardTable(),
        ],
      ),
    );
  }
}
