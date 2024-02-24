import 'package:basic101/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _controller = AuthController();
  final _nameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
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
                  'Seja bem-vindo de volta',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 50),
                nameField(),
                const SizedBox(height: 15),
                passwordFiel(),
                const SizedBox(height: 35),
                loginButtom(),
                const SizedBox(height: 15),
                MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => passwordRecoveryModal(),
                    );
                  },
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
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
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
    if (_nameTextController.text.trim().isEmpty ||
        _passwordTextController.text.trim().isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Widget passwordRecoveryModal() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: global.sombreGrey,
      ),
      padding: const EdgeInsets.all(8),
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 30,
                child: Divider(
                  color: global.naturallyCalm,
                  thickness: 1,
                )),
          ),
          const SizedBox(height: 50),
          const Text(
            'Tell us your email',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 50),
          emailField(),
          const SizedBox(
            height: 35,
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () async {
              if (_emailTextController.text.isNotEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: global.sombreGrey,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    title: const Text(
                      'Check your email inbox',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: global.brightGrey,
                          letterSpacing: 3),
                    ),
                  ),
                ).whenComplete(() => context.pop());
              } else {}
            },
            splashColor: global.brightGrey,
            elevation: 2,
            color: global.sombreGrey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
            child: const Text(
              'Send email',
              style: TextStyle(
                  color: global.brightGrey, letterSpacing: 3, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget nameField() => TextFormField(
        controller: _nameTextController,
        maxLines: 1,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        maxLength: 16,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: const Text(
            'Name',
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
          hintText: 'Insert your name',
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
        ),
      );

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
          hintText: 'Insert your email',
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
        ),
      );

  Widget passwordFiel() => TextFormField(
        controller: _passwordTextController,
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: _showPassword,
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
              _showPassword = !_showPassword;
            }),
            child: _showPassword
                ? const Icon(
                    Icons.visibility_off,
                    size: 22,
                    color: global.brightGrey,
                  )
                : const Icon(
                    Icons.visibility,
                    size: 22,
                    color: global.brightGrey,
                  ),
          ),
        ),
      );

  Widget loginButtom() => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          _checkInputs()
              ? _controller
                  .setName("Hello, ${_nameTextController.text.trim()}!")
              : _controller.setName('You\'ll need a name, mate!');
        },
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
}
