import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetText extends StatelessWidget {
  const WidgetText(
      {Key? key,
      required this.text,
      this.color = const Color(0xff1B2535),
      this.textAlign = TextAlign.start,
      this.widget
      })
      : super(key: key);

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.getFont('Poppins',
              color: color,
              fontWeight: widget==null?FontWeight.w400:FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 15),
          textAlign: textAlign,

        ),
        if (widget != null) ...[
          const SizedBox(
            width: 10,
          ),
          widget!
        ]
      ],
    );
  }
}
