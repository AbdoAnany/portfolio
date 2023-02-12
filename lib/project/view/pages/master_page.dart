
import 'package:flutter/material.dart';

import '0_header/0_header.dart';
import '1_home/pages/home/home_page.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: HeaderAppBar(),
      body: HomePage(),
    );
  }
}
