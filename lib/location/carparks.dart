import 'package:google_maps_flutter/google_maps_flutter.dart';

final Marker maritimeSquareCarPark = Marker(
    markerId: MarkerId("MaritimeSquareCarPark"),
    position: LatLng(22.357744687084253, 114.10658784249179),
    infoWindow: InfoWindow(title: "Maritime Square CarPark"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

final Marker tsingYiEstateMultiStoreyCarPark = Marker(
    markerId: MarkerId("TsingYiEstateMultiStoreyCarPark"),
    position: LatLng(22.35596855194703, 114.10288639434796),
    infoWindow: InfoWindow(title: "Tsing Yi Estate Multi-Storey Car Park"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));
