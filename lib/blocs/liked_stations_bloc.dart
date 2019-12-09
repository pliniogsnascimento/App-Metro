import 'package:bloc/bloc.dart';
import 'package:train_station/blocs/liked_stations_state.dart';

import 'liked_stations_event.dart';

class LikedStationsBloc extends Bloc<LikedStationsEvent, LikedStationsState> {
  @override
  LikedStationsState get initialState => LikedStationsState.initial();

  @override
  Stream<LikedStationsState> mapEventToState(
    LikedStationsEvent event
  ) async* {

    if(event is AddStation) {
      
    }

    if(event is RemoveStation) {

    }

  }

}