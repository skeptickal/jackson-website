import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jackson_website/cubit/summoner_cubit.dart';

class JacksonBlocProvider extends StatelessWidget {
  const JacksonBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SummonerCubit(),
        ),
      ],
      child: child,
    );
  }
}
