import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

abstract class AppLauncher {
  static Future<void> openUrl(String url) async {
    // final Uri uri = Uri(
    //   scheme: LaunchType.https.name,
    //   path: 'pub.dev/packages/url_launcher',
    // );

    if (await canLaunchUrlString(url)) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> openLinkedIn(String name) async {
    final Uri linkedIn = Uri.parse('https://jo.linkedin.com/in/$name');

    if (await canLaunchUrl(linkedIn)) {
      await launchUrl(linkedIn);
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> openGoogleMap(double latitude, double longitude) async {
    final Uri googleMapUri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );

    if (await canLaunchUrl(googleMapUri)) {
      await launchUrl(googleMapUri);
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> openWhatsup(String phoneNumber, {String? message}) async {
    final whatsupUri = Uri.parse('https://wa.me/$phoneNumber?text=$message');

    if (await canLaunchUrl(whatsupUri)) {
      await launchUrl(whatsupUri);
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> sendSms(String phoneNumber, {String? message}) async {
    // final uri2 = Uri(scheme: LaunchType.sms.name, path: phoneNumber);
    final smsUri = Uri.parse('sms:$phoneNumber?body=$message');

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> callPhone(String phoneNumber) async {
    final Uri uri = Uri(scheme: LaunchType.tel.name, path: phoneNumber);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'The Uri is not valid';
    }
  }

  static Future<void> senEmail(
    String email, {
    String? body,
    String? subject,
  }) async {
    // final Uri uri = Uri(scheme: LaunchType.mailto.name, path: email);
    final Uri uri = Uri.parse('mailto:$email?body=$body&subject=$subject');

    if (!await launchUrl(uri)) {
      throw 'The Uri is not valid';
    }
  }
}

enum LaunchType { sms, tel, mailto, https }
