// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:unsplish_api_img/controller/homecontroller.dart';
// // import 'package:one/controller/homecontroller.dart';

// class DetailsView extends StatelessWidget {
//   DetailsView( {super.key, required this.index});
//   final int index;

//   final AppController homeController = Get.find<AppController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         height: double.infinity,
//         child: Hero(
//           tag: homeController.photos[index].id!,
//           child: CachedNetworkImage(
//             imageUrl: homeController.photos[index].urls!['regular']!,
//             imageBuilder: (context, imageProvider) => Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Positioned(
//                   top: 0,
//                   left: 0,
//                   right: 0,
//                   bottom: 0,
//                   child: SizedBox(
//                     width: double.infinity,
//                     height: double.infinity,
//                     child: Image(
//                       image: imageProvider,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Colors.black,
//                         Colors.transparent,
//                         Colors.transparent,
//                       ],
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 30,
//                   child: Text(
//                     homeController.photos[index].createdAt!
//                         .substring(0, 10)
//                         .replaceAll("-", " / "),
//                     style: GoogleFonts.ubuntu(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             placeholder: (context, url) => Center(
//               child: LoadingAnimationWidget.flickr(
//                 rightDotColor: Colors.black,
//                 leftDotColor: const Color(0xfffd0079),
//                 size: 35,
//               ),
//             ),
//             errorWidget: (context, url, error) => const Icon(
//               Icons.image_not_supported_rounded,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:unsplish_api_img/controller/homecontroller.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key, required this.index});
  
  final int index;

  final AppController homeController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    // Check if index is valid to avoid out-of-range errors
    if (index < 0 || index >= homeController.photos.length) {
      return Scaffold(
        body: Center(child: Text('Photo not found')),
      );
    }

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Hero(
          tag: homeController.photos[index].id!,
          child: CachedNetworkImage(
            imageUrl: homeController.photos[index].urls!['regular']!,
            imageBuilder: (context, imageProvider) => Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Text(
                    homeController.photos[index].createdAt!
                        .substring(0, 10)
                        .replaceAll("-", " / "),
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            placeholder: (context, url) => Center(
              child: LoadingAnimationWidget.flickr(
                rightDotColor: Colors.black,
                leftDotColor: const Color(0xfffd0079),
                size: 35,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.image_not_supported_rounded,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}




























// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:one/controller/homecontroller.dart';
// import 'package:unsplish_api_img/controller/homecontroller.dart';

// class DetailsView extends StatelessWidget {
//   final int index;
//   DetailsView({required this.index});

//   final AppController homeController = Get.find<AppController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Hero(
//         tag: homeController.photos[index].id!,
//         child: CachedNetworkImage(
//           imageUrl: homeController.photos[index].urls!['regular']!,
//           fit: BoxFit.cover,
//           placeholder: (context, url) => Center(child: CircularProgressIndicator()),
//           errorWidget: (context, url, error) => Icon(Icons.error),
//         ),
//       ),
//     );
//   }
// }
