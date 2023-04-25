import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';

class FCMUtils {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future initialize() async {
    await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
    // FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen(messageHandler);
    FirebaseMessaging.onBackgroundMessage(messageHandler);
  }

  Future<void> messageHandler(RemoteMessage message) async {
    log(message.notification?.title ?? 'Null title');
    log(message.notification?.body ?? 'Null body');
  }
}
