import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const fb_url = 'https://www.facebook.com';
const insta_url = 'https://www.instagram.com';
const twit_url = 'https://www.twitter.com';

class TextButtonIcon extends StatelessWidget {
  const TextButtonIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.amber,
          child: Row(
            children: [
              TextButton.icon(
                onPressed: () => _launchURL(fb_url),
                icon: Image.asset(
                  "assets/social/facebook.png",
                  width: 15,
                  height: 15,
                  color: Colors.black,
                ),
                label: Text(''),
              ),
              TextButton.icon(
                onPressed: () => _launchURL(insta_url),
                icon: Image.asset(
                  "assets/social/instagram.png",
                  width: 15,
                  height: 15,
                  color: Colors.black,
                ),
                label: Text(''),
              ),
              TextButton.icon(
                onPressed: () => _launchURL(twit_url),
                icon: Image.asset(
                  "assets/social/twitter.png",
                  width: 15,
                  height: 15,
                  color: Colors.black,
                ),
                label: Text(''),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _launchURL(String url) async => await canLaunch(url)
      ? await launch(url)
      : throw 'Could not launch Facebook URL $url';
}
