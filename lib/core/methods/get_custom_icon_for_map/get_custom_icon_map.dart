// import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:image/image.dart' as img;
//
// Future<BitmapDescriptor> getCustomIcon(String imageUrl) async {
//   final ByteData byteData =
//       await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl);
//   final Uint8List uint8List = byteData.buffer.asUint8List();
//   return BitmapDescriptor.fromBytes(uint8List, size: const Size(15, 15));
// }
//
// Future<BitmapDescriptor> getCustomIconFromAssets(String assetImagePath) async {
//   ByteData data = await rootBundle.load(assetImagePath);
//   Uint8List bytes = data.buffer.asUint8List();
//
//   // Decode the image
//   img.Image image = img.decodeImage(bytes)!;
//
//   // Resize the image
//   img.Image resizedImage = img.copyResize(image, width: 70, height: 70);
//
//   // Encode the resized image to PNG
//   Uint8List resizedBytes = img.encodePng(resizedImage);
//
//   return BitmapDescriptor.fromBytes(resizedBytes);
// }
