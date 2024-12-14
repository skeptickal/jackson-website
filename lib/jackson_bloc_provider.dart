import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JacksonBlocProvider extends StatelessWidget {
  const JacksonBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [],
      child: child,
    );
  }
}
