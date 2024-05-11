import 'package:flutter/material.dart';
import 'package:multi_store/widgets/widgets.dart';

class ExternalLoginWidget extends StatelessWidget {
  const ExternalLoginWidget({
    super.key,
    required this.function,
    required this.image,
  });

  final Function function;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/inapp/$image.jpg')),
              shape: BoxShape.circle,
            ),
          ),
          const VerticalSpacing(5),
          Text(
            image[0].toUpperCase() + image.substring(1),
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
