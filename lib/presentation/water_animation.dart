import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WaterBottleAnimation extends StatefulWidget {
  @override
  _WaterBottleAnimationState createState() => _WaterBottleAnimationState();
}

class _WaterBottleAnimationState extends State<WaterBottleAnimation> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Bottle Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              painter: WaterBottlePainter(1.0 - _controller.value), // Reverse the animation value
              size: Size(200, 300),
            );
          },
        ),
      ),
    );
  }
}

class WaterBottlePainter extends CustomPainter {
  final double animationValue;

  WaterBottlePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final bottlePath = Path();

    // Draw the bottle body
    bottlePath.moveTo(size.width * 0.2, size.height * 0.8);
    bottlePath.lineTo(size.width * 0.2, size.height * 0.2);
    bottlePath.quadraticBezierTo(size.width * 0.5, size.height * 0.1, size.width * 0.8, size.height * 0.2);
    bottlePath.lineTo(size.width * 0.8, size.height * 0.8);
    bottlePath.quadraticBezierTo(size.width * 0.5, size.height * 0.9, size.width * 0.2, size.height * 0.8);

    // // Draw the bottle cap
    // bottlePath.moveTo(size.width * 0.4, size.height * 0.8);
    // bottlePath.lineTo(size.width * 0.6, size.height * 0.8);

    // // Draw the bottle neck
    // bottlePath.moveTo(size.width * 0.45, size.height * 0.8);
    // bottlePath.lineTo(size.width * 0.45, size.height * 0.9);
    // bottlePath.moveTo(size.width * 0.55, size.height * 0.8);
    // bottlePath.lineTo(size.width * 0.55, size.height * 0.9);

    // Draw the water level
    final waterLevel = size.height * (0.2 + animationValue * 0.6);
    bottlePath.lineTo(size.width * 0.2, waterLevel);
    bottlePath.quadraticBezierTo(size.width * 0.5, waterLevel - 30, size.width * 0.8, waterLevel);
    bottlePath.lineTo(size.width * 0.8, size.height * 0.8);

    // Draw the water inside the bottle
    final waterPaint = Paint()
      ..color = Colors.blue.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    final waterPath = Path();
    waterPath.moveTo(size.width * 0.2, waterLevel);
    waterPath.lineTo(size.width * 0.2, size.height * 0.8);
    waterPath.lineTo(size.width * 0.8, size.height * 0.8);
    waterPath.lineTo(size.width * 0.8, waterLevel);

    bottlePath.close();
    waterPath.close();

    canvas.drawPath(bottlePath, paint);
    canvas.drawPath(waterPath, waterPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
