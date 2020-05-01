import 'package:covidflud/blocs/bloc.dart';
import 'package:covidflud/ui/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String kodeprovinsi = "0";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PageBloc(),
          ), 
          BlocProvider(
            create: (context) => DataBloc()..add(EventLoadKasusProvinsi(kodeProvinsi: kodeprovinsi)),
          ), 
        ],
        child: Wrapper(),
      ) 
    );
  }
}
 