import 'package:firebase_storage/firebase_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

dynamic height;
dynamic width;
List indicator=[];
//int activeIndex = 0;
int activeindexslideroffers=0;
int activecontainerindex=0;
List containerindicator=[];
SharedPreferences? onboard; 

 Future<String> getVideoUrlFromStorage() async {
  // Assuming you have a reference to the video file in Firebase Storage
  Reference videoRef = FirebaseStorage.instance.ref().child('Video/addmoney.mp4');

  try {
    // Get the download URL for the video
    final videoUrl = await videoRef.getDownloadURL();
    return videoUrl;
  } catch (e) {
    print('Error fetching video URL: $e');
    // Handle the error accordingly
    return "https://www.youtube.com/watch?v=sD9IyJqSIaE";
  }
}