import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

// ...somewhere in your Flutter app...
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['haziqkamel@live.com'],
    // cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'Hi Haziq!',
    body: 'I am contacting you for ...',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
