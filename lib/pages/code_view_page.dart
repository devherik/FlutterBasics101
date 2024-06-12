import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class CodeViewPage extends StatelessWidget {
  const CodeViewPage({required String code, super.key}) : _code = code;
  final String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const SizedBox(),
        actions: [
          MaterialButton(
            onPressed: () {
              context.pop();
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconTheme(
              data: Theme.of(context).iconTheme,
              child: const Icon(
                Icons.close,
              ),
            ),
          ),
        ],
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
                    style: Theme.of(context).textTheme.labelSmall,
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
