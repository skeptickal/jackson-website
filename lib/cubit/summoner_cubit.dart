import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'summoner_state.dart';

class SummonerCubit extends Cubit<SummonerState> {
  SummonerCubit() : super(SummonerInitial());
}
