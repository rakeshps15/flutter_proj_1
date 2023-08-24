import 'package:flutter/material.dart';

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> with SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState(){
    animationController=AnimationController(vsync: vsync),
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text('Hello All',
              style: TextStyle(fontSize: animation?.value),),),
          ElevatedButton(onPressed: () => ZoomIn(), child: const Text('Increase text size'))
        ],
      ),
    );
  }

  void ZoomIn() {
    animationController!.forward();
  }
}