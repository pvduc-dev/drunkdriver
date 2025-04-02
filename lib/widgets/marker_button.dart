import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drunkdriver/providers/api_provider.dart';
import 'package:drunkdriver/utils/location_utils.dart';
import 'package:drunkdriver/utils/dialog_utils.dart';


class MarkerButton extends StatefulWidget {
  const MarkerButton({super.key});

  @override
  MarkerButtonState createState() => MarkerButtonState();
}

class MarkerButtonState extends State<MarkerButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _radiusAnimation;
  late Animation<double> _opacityAnimation;

  Future<void> _onTap() async {
    DialogUtils.showLoadingDialog(context);
    try {
      final position = await LocationUtils.getCurrentLocation();
      if (!mounted) return;
      final response = await context
        .read<ApiProvider>()
        .api
        .getGeoApi()
        .geoControllerGetDistance(
          origin:
              '${position.latitude},${position.longitude}',
          extra: {'context': context, 'isLoading': false},
        );
      Navigator.pop(context);
      Navigator.pushNamed(context, '/booking', arguments: response.data?.routes.first.legs.first);
    } catch (e) {
      if (!mounted) return;
      Navigator.pop(context);
      Navigator.pushNamed(context, '/booking');
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    _radiusAnimation = Tween<double>(
      begin: 0,
      end: 50,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _opacityAnimation = Tween<double>(
      begin: 0.5,
      end: 0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Hiệu ứng vòng tròn lan tỏa
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: MarkerPainter(
                  radius: _radiusAnimation.value,
                  opacity: _opacityAnimation.value,
                ),
                child: const SizedBox(width: 300, height: 300),
              );
            },
          ),
          // Nút chính (vòng tròn cố định)
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'GỌI TÀI XẾ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MarkerPainter extends CustomPainter {
  final double radius;
  final double opacity;

  MarkerPainter({required this.radius, required this.opacity});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..color = Colors.orange.withOpacity(opacity);

    // Vẽ vòng tròn lan tỏa
    canvas.drawCircle(center, 100 + radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
