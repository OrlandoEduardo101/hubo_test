import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      final profile = controller.userProfile;
      return Container(
        padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.bar_chart_outlined), onPressed: () {}),
              IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {})
            ],
          ), Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(profile.urlImg))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '${profile.name}',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '${profile.responsibility}',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0,),
                child: Text(
                  '${profile.bio}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
          
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RaisedButton(
                  color: Colors.white,padding: EdgeInsets.only(top: 16, bottom: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.grey)),
                  child: Text("CONHEÇA O MEU TRABALHO", style: TextStyle(color: Colors.grey, fontSize: 18),),
                  onPressed: () {}),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ 
                Image.network('https://www.iconsdb.com/icons/preview/gray/github-9-xxl.png', width: 50,),
                Image.network('https://icon-library.com/images/linkedin-icon-png-black/linkedin-icon-png-black-17.jpg', width: 70,),
                Image.network('https://lh3.googleusercontent.com/proxy/7XJy6kTQifj8pNmvTPhfd0zIpzl1Yfw9STOmTHv-05s6ueOaPeWruUW14GcGoX-AMnCb8a59GajKwNBvbbjLvKnGkpsI9X-HVBhXvxR5gDmIWlMH5MLeQER9Ta2onms0FUHz48w', width: 50,),
                Image.network('https://www.iconsdb.com/icons/preview/dim-gray/whatsapp-xxl.png', width: 50,),
                
              ],
            ),
          )
        ],
      ));
    });
  }
}
