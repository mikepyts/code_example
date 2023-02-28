import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:neosx/common/business_objects/result.dart';
import 'package:neosx/location/services/location_service.dart';

class ShareLocationCubit extends Cubit<bool> {
  final LocationService _locationService;
  late StreamSubscription _locationEnabledSubscription;

  ShareLocationCubit(this._locationService) : super(false) {
    _locationEnabledSubscription = Geolocator.getServiceStatusStream()
        .listen((_) => update());
    update();
  }

  Future<void> update() async {
    await _locationService.isSharingEnabled().then(
          (value) => value.maybeWhen(
            success: (value) => emit(value),
            orElse: () {},
          ),
        );
  }

  Future<void> disableSharing() async {
    await _locationService.disableSharing();
    update();
  }

  Future<Result<bool>> enableSharing() async {
    final result = await _locationService.enableSharing();
    update();
    return result;
  }
  @override
  Future<void> close() {
    _locationEnabledSubscription.cancel();
    return super.close();
  }
}
