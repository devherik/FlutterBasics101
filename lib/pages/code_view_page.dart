import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

class CodeViewPage extends StatelessWidget {
  const CodeViewPage({required String code, super.key}) : _code = code;
  final String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  child: SelectableText(
                    _code,
                    style: const TextStyle(
                        color: global.naturallyCalm, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: false,
    );
  }
}
