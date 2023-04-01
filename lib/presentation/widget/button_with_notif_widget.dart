import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';

class ButtonWithNotifWidget extends StatefulWidget {
  const ButtonWithNotifWidget({
    super.key,
    required this.icon,
    required this.notifCount,
    required this.navigator,
  });

  final FaIcon icon;
  final String notifCount;
  final String navigator;

  @override
  State<ButtonWithNotifWidget> createState() => _ButtonWithNotifWidgetState();
}

class _ButtonWithNotifWidgetState extends State<ButtonWithNotifWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, widget.navigator);
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            child: widget.icon,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                widget.notifCount,
                style: poppins3.copyWith(
                  color: Colors.white,
                  fontSize: 8,
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
