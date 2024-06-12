import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatorPage extends StatefulWidget {
  const AnimatorPage({super.key});

  @override
  State<AnimatorPage> createState() => _AnimatorPageState();
}

class _AnimatorPageState extends State<AnimatorPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              const String code = """
            import 'package:flutter/material.dart';
            import 'package:go_router/go_router.dart';

            class AnimatorPage extends StatefulWidget {
              const AnimatorPage({super.key});

              @override
              State<AnimatorPage> createState() => _AnimatorPageState();
            }

            class _AnimatorPageState extends State<AnimatorPage>
                with SingleTickerProviderStateMixin {
              late Animation<double> animation;
              late AnimationController controller;

              @override
              void initState() {
                super.initState();
                controller =
                    AnimationController(duration: const Duration(seconds: 2), vsync: this);
                animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
                  ..addStatusListener((status) {
                    if (status == AnimationStatus.completed) {
                      controller.reverse();
                    } else if (status == AnimationStatus.dismissed) {
                      controller.forward();
                    }
                  });
                controller.forward();
              }

              @override
              Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    actions: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          const String code = '';
                          context.push('/codeview', extra: code);
                        },
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: IconTheme(
                          data: Theme.of(context).iconTheme,
                          child: const Icon(
                            Icons.code,
                          ),
                        ),
                      ),
                    ],
                  ),
                  body: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    child: AnimatedLogo(animation: animation),
                  ),
                );
              }

              @override
              void dispose() {
                controller.dispose();
                super.dispose();
              }
            }

            class AnimatedLogo extends AnimatedWidget {
              const AnimatedLogo({super.key, required Animation<double> animation})
                  : super(listenable: animation);

              static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
              static final _sizeTween = Tween<double>(begin: 0, end: 300);

              @override
              Widget build(BuildContext context) {
                final animation = listenable as Animation<double>;
                return Center(
                  child: Opacity(
                    opacity: _opacityTween.evaluate(animation),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: _sizeTween.evaluate(animation),
                      width: _sizeTween.evaluate(animation),
                      child: const FlutterLogo(),
                    ),
                  ),
                );
              }
            }
            """;
              context.push('/codeview', extra: code);
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconTheme(
              data: Theme.of(context).iconTheme,
              child: const Icon(
                Icons.code,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        child: AnimatedLogo(animation: animation),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({super.key, required Animation<double> animation})
      : super(listenable: animation);

  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 150, end: 300);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
