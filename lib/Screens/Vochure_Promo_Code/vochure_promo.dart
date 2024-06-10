import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VochurePromoPage extends StatefulWidget {
  const VochurePromoPage({super.key});

  @override
  State<VochurePromoPage> createState() => _VochurePromoPageState();
}

class _VochurePromoPageState extends State<VochurePromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VoucherCard(
              discount: '5% off',
              description: 'for your entire purchase',
              code: 'CEMENT 50',
            ),
            SizedBox(height: 20),
            VoucherCard(
              discount: '20% off',
              description: 'essential Material',
              code: 'STEEL 50',
            ),
          ],
        ),
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  final String discount;
  final String description;
  final String code;

  VoucherCard({
    required this.discount,
    required this.description,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MiddleCurveClipper(),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(discount, style: PROMPT),
                Spacer(),
                Icon(Icons.info_outline, color: Color(0xFF636363)),
              ],
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: PROMPT_1,
            ),
            Divider(),
            Row(
              children: [
                Text(
                  code,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.copy, color: Color(0xFF636363)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MiddleCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, 0); // Start point
    path.lineTo(0, size.height); // Left edge

    var firstControlPoint = Offset(size.width * 0.1, size.height * 0.5);
    var firstEndPoint = Offset(0, size.height);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.lineTo(size.width, size.height); // Bottom edge

    var secondControlPoint = Offset(size.width * 0.9, size.height * 0.5);
    var secondEndPoint = Offset(size.width, 0);

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
