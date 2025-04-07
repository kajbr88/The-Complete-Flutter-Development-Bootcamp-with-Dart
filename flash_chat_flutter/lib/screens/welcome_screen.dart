import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/components/rounded-button.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


//Mixins are a way of using a class's code in multiple class hierarchies.
// 3 things required for custom animations 1. ticker 2. animation controller and 3. animation value.
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {/*by adding SingleTickerProviderStateMixin 
  we enable _WelcomeScreenState to act as the ticker provider.*/
  late AnimationController controller;
  Animation? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 1), vsync: this);/*when we
want to reference the object made from the class in the class's own code we use
 the keyword this, it allows objects to access their own properties and methods.*/

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);/* ColorTween is the how (the interpolation logic).
AnimationController is the when (the timing).
animate() combines them to produce the what (the Animation<Color>).*/

    // animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);/* in 
// curve argument we specify the kind of curve we want to apply to the animation specified in parent argument. */

    controller.forward();//end of forward animation is .completed and end of reverse animation is .dismissed. 

    // animation?.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    controller.addListener(() {
      setState(() {});
      print(animation?.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation?.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      ('Flash Chat'),
                      textStyle: const TextStyle(
                        fontSize: 41.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      speed: const Duration(milliseconds: 250),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}


