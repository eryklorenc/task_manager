import 'package:flutter/material.dart';
import 'package:task_manager/generated/l10n.dart';

class DisplayPayload extends StatefulWidget {
  final String? payloadData;
  const DisplayPayload({super.key, required this.payloadData});

  @override
  State<DisplayPayload> createState() => _DisplayPayloadState();
}

class _DisplayPayloadState extends State<DisplayPayload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.payloadData ?? S.of(context).task_priority,
        ),
      ),
    );
  }
}
