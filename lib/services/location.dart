
import 'package:geolocator/geolocator.dart';

class Location {

   late double latitude;
   late double lontitude;

Future<void> getCurrentLocation() async {
  try{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
    latitude = position.latitude;
    lontitude=position.longitude;
  }
  catch(e){
    print(e);
  }
}
}