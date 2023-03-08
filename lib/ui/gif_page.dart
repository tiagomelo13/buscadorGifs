import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';

class GifPage extends StatelessWidget {
    
  final Map _gifData;
  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData ['title']),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              SocialShare.shareFacebookStory(appId: (_gifData['images'] ['fixed_height'] ['url']));
              SocialShare.shareInstagramStory(appId: (_gifData['images'] ['fixed_height'] ['url']), imagePath: ('Gif'));
              SocialShare.shareWhatsapp((_gifData['images'] ['fixed_height'] ['url']));

            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData['images'] ['fixed_height'] ['url']),
      ),
    );
  }
}
