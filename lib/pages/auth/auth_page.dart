import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _hidePassword = true;
  bool _loginButtomState = false;

  @override
  void initState() {
    super.initState();
    _passwordTextController.addListener(() {
      if (_emailTextController.text.isNotEmpty &&
          _passwordTextController.text.isNotEmpty) {
        setState(() {
          _loginButtomState = true;
        });
      } else {
        _loginButtomState = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              const String code = """import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _hidePassword = true;
  bool _loginButtomState = false;

  @override
  void initState() {
    super.initState();
    _passwordTextController.addListener(() {
      if (_emailTextController.text.isNotEmpty &&
          _passwordTextController.text.isNotEmpty) {
        setState(() {
          _loginButtomState = true;
        });
      } else {
        _loginButtomState = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              const String code = '';
              context.push('/codeview', extra: code);
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Icon(
              Icons.code,
              color: global.brightGrey,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 50),
                emailField(),
                const SizedBox(height: 15),
                passwordFiel(),
                const SizedBox(height: 35),
                loginButtom(),
                const SizedBox(height: 15),
                MaterialButton(
                  onPressed: () => context.go('/home/auth/recovery'),
                  color: global.sombreGrey,
                  elevation: 0,
                  splashColor: global.sombreGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                  child: const Text(
                    'Forgot password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: global.majesticMist),
                  ),
                ),
                MaterialButton(
                  onPressed: () => context.push('/home/auth/newaccount'),
                  color: global.sombreGrey,
                  elevation: 0,
                  splashColor: global.sombreGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                  child: const Text(
                    'Click here to create an account.',
                    style: TextStyle(fontSize: 12, color: global.majesticMist),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _checkInputs() {
    // check the data from textfields and return true if they are empty
    if (_emailTextController.text.trim().isEmpty ||
        _passwordTextController.text.trim().isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Widget emailField() => TextFormField(
        controller: _emailTextController,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: const Text(
            'E-mail',
            style: TextStyle(
                fontSize: 16, color: global.brightGrey, letterSpacing: 3),
          ),
          fillColor: global.sombreGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          counterStyle: const TextStyle(color: global.naturallyCalm),
          hintText: 'Insert your e-mail',
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
        ),
      );

  Widget passwordFiel() => TextFormField(
        controller: _passwordTextController,
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: _hidePassword,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: const Text(
            'Password',
            style: TextStyle(
                fontSize: 16, color: global.brightGrey, letterSpacing: 3),
          ),
          fillColor: global.sombreGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          counterStyle: const TextStyle(color: global.naturallyCalm),
          hintText: 'Insert your password',
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
              _hidePassword = !_hidePassword;
            }),
            child: _hidePassword
                ? const Icon(
                    Icons.visibility_off,
                    size: 22,
                    color: global.majesticMist,
                  )
                : const Icon(
                    Icons.visibility,
                    size: 22,
                    color: global.majesticMist,
                  ),
          ),
        ),
      );

  Widget loginButtom() => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: _loginButtomState
            ? () {
                if (_checkInputs()) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: global.sombreGrey,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      title: Text(
                        'User ${'_emailTextController.text.trim()'} logged',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            color: global.brightGrey,
                            letterSpacing: 3),
                      ),
                    ),
                  ).whenComplete(() => null);
                } else {}
              }
            : null,
        splashColor: global.brightGrey,
        elevation: 2,
        color: global.sombreGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: const Text(
          'Login',
          style: TextStyle(
              color: global.brightGrey, letterSpacing: 3, fontSize: 16),
        ),
      );
}""";
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
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Text(
                  'Welcome back',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 100),
                emailField(),
                const SizedBox(height: 15),
                passwordFiel(),
                const SizedBox(height: 50),
                loginButtom(),
                const SizedBox(height: 15),
                MaterialButton(
                  onPressed: () => context.go('/home/auth/recovery'),
                  color: Colors.transparent,
                  elevation: 0,
                  splashColor: global.naturallyCalm,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Forgot password?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () => context.push('/home/auth/newaccount'),
                  color: Colors.transparent,
                  elevation: 0,
                  splashColor: global.naturallyCalm,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Click here to create an account.',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _checkInputs() {
    // check the data from textfields and return true if they are empty
    if (_emailTextController.text.trim().isEmpty ||
        _passwordTextController.text.trim().isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Widget emailField() => TextFormField(
        controller: _emailTextController,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            label: Text(
              'E-mail',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: global.sombreGrey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: global.sombreGrey,
              ),
            ),
            counterStyle: const TextStyle(color: global.naturallyCalm),
            hintText: 'Insert your e-mail',
            hintStyle: Theme.of(context).textTheme.labelMedium),
      );

  Widget passwordFiel() => TextFormField(
        controller: _passwordTextController,
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: _hidePassword,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: Text(
            'Password',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          hintText: 'Insert your password',
          hintStyle: Theme.of(context).textTheme.labelMedium,
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
              _hidePassword = !_hidePassword;
            }),
            child: _hidePassword
                ? IconTheme(
                    data: Theme.of(context).iconTheme,
                    child: const Icon(
                      Icons.visibility_off,
                    ),
                  )
                : IconTheme(
                    data: Theme.of(context).iconTheme,
                    child: const Icon(
                      Icons.visibility,
                    ),
                  ),
          ),
        ),
      );

  Widget loginButtom() => ElevatedButtonTheme(
      data: Theme.of(context).elevatedButtonTheme,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: _loginButtomState
                ? () {
                    if (_checkInputs()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: global.sombreGrey,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          title: Text(
                            'User ${_emailTextController.text.trim()} logged',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16,
                                color: global.brightGrey,
                                letterSpacing: 3),
                          ),
                        ),
                      ).whenComplete(() => null);
                    } else {}
                  }
                : null,
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.labelMedium,
            )),
      ));
}
