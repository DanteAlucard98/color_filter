import 'package:flutter/material.dart';
import 'package:colorfilter_generator/addons.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorFilter Example'),
      ),
      body: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.matrix(
              //ColorFilterAddons.brightness(0.5),
              //ColorFilterAddons.contrast(0.9),
              //ColorFilterAddons.sepia(0.5)),
              ColorFilterAddons.rgbScale(0, 1, 0)),
          child: Column(
            children: [
              const Text('Some text with filter applied'),
              Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
            ],
          ),
        ),
      ),
    );
  }
}
