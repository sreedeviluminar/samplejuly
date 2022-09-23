import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(RatelApp());

class RatelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
        ),
        body: PopupDialog(),
      ),
    );
  }
}

class PopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Basic Alert'),
              onPressed: () => _onBasicAlertPressed(context),
            ),
            ElevatedButton(
              child: const Text('Basic Waiting Alert'),
              onPressed: () => _onBasicWaitingAlertPressed(context),
            ),
            ElevatedButton(
              child: const Text('Custom Animation Alert'),
              onPressed: () => _onCustomAnimationAlertPressed(context),
            ),
            ElevatedButton(
              child: const Text('Alert with Button'),
              onPressed: () => _onAlertButtonPressed(context),
            ),
            ElevatedButton(
              child: const Text('Alert with Buttons'),
              onPressed: () => _onAlertButtonsPressed(context),
            ),
            ElevatedButton(
              child: const Text('Alert with Style'),
              onPressed: () => _onAlertWithStylePressed(context),
            ),
            ElevatedButton(
              child: const Text('Alert with Custom Image'),
              onPressed: () => _onAlertWithCustomImagePressed(context),
            ),
            ElevatedButton(
              child: const Text('Alert with Custom Content'),
              onPressed: () => _onAlertWithCustomContentPressed(context),
            ),

          ],
        ),
      ),
    );
  }

// The easiest way for creating RFlutter Alert
  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
    ).show();
  }

  // Code will continue after alert is closed.
  _onBasicWaitingAlertPressed(context) async {
    await Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
    ).show();

    // Code will continue after alert is closed.
    debugPrint("Alert closed now.");
  }

//Custom animation alert
  _onCustomAnimationAlertPressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      alertAnimation: fadeAlertAnimation,
    ).show();
  }

  Widget fadeAlertAnimation(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

// Alert with single button.
  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          onPressed: () => _onCustomAnimationAlertPressed(context),
          width: 120,
          child: const Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ).show();
  }

// Alert with multiple and custom buttons
  _onAlertButtonsPressed(context) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          color: const Color.fromRGBO(0, 179, 134, 1.0),
          child: const Text(
            "FLAT",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        DialogButton(
          onPressed: () => Navigator.pop(context),
          gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(116, 116, 191, 1.0),
                Color.fromRGBO(52, 138, 199, 1.0),
              ]),
          child: const Text(
            "GRADIENT",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    ).show();
  }

// Advanced using of alerts
  _onAlertWithStylePressed(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.fromTop,
        isCloseButton: true,
        isOverlayTapDismiss: false,
        descStyle: const TextStyle(fontWeight: FontWeight.bold),
        animationDuration: const Duration(milliseconds: 400),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
          side: const BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: const TextStyle(
          color: Colors.red,
        ),
        constraints: const BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: const Color(0x55000000),
        alertElevation: 0,
        alertAlignment: Alignment.topCenter);

    // Alert dialog using custom alert style
    Alert(
      context: context,
      style: alertStyle,
      type: AlertType.info,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          child: const Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: const Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }

// Alert custom images
  _onAlertWithCustomImagePressed(context) {
    Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      image: Image.asset("assets/images/grapes.png", width: 100, height: 100,),
    ).show();
  }

// Alert custom content
  _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "LOGIN",
        content: Column(
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}