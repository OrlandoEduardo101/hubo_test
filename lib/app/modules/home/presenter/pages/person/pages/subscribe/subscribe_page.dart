import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'subscribe_controller.dart';

class SubscribePage extends StatefulWidget {
  final String title;
  const SubscribePage({Key key, this.title = "Subscribe"}) : super(key: key);

  @override
  _SubscribePageState createState() => _SubscribePageState();
}

class _SubscribePageState
    extends ModularState<SubscribePage, SubscribeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Container(
        //width: 150,
        height: 100,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/img/image3.jpg'),
                fit: BoxFit.fitWidth)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.bar_chart_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ],
            ),
            Column(
              children: [

            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Container(
                  padding: EdgeInsets.all(8),
                  height: 80,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all( Radius.circular(15),
                  ),
                  ),
                  child: Image.network(
                      'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png')),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'Curso de Fluter',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0,),
                child: Text(
                  'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0,),
                child: Text(
                  'Mussum ipsum cacilds, vidis litro abertis. Consetis adipisci',
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
            RaisedButton(
                          color: Colors.amber,
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.grey)),
                          child: Text("INSCREVA-SE", style: TextStyle(color: Colors.white, fontSize: 26),),
                          onPressed: () {}),
                  
          ],
        ),
      ),
    );
  }
}
