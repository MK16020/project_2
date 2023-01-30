import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class StyledButton extends StatelessWidget {
  final String Label;
  const StyledButton({
    Key? key,
    required this.Label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(BorderSide(width: 2)),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(child: StyledText(Label, fontSize: 16)),
      ),
    );
  }
}
