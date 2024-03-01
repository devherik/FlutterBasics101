import 'package:basic101/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:basic101/config/app_globals.dart' as global;

class NewaccountPage extends StatefulWidget {
  const NewaccountPage({super.key});

  @override
  State<NewaccountPage> createState() => _NewaccountPageState();
}

class _NewaccountPageState extends State<NewaccountPage> {
  final _controller = AuthController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _hidePassword = true;
  bool _createButtomState = false;
  bool _passwordFielState = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordTextController.addListener(() {
      progressBar();
      setState(() {});
    });
    _emailTextController.addListener(() {
      if (_emailTextController.text.isNotEmpty &&
          _emailTextController.text.length >= 8) {
        setState(() {
          _passwordFielState = true;
        });
      } else {
        setState(() {
          _passwordFielState = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 32, 10, 10),
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Now, let\'s create a new account for you',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 35),
                nameField(),
                const SizedBox(height: 25),
                newPasswordField(),
                const SizedBox(height: 25),
                confirmNewaccountButtom(),
                const SizedBox(height: 25)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nameField() => TextFormField(
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

  Widget newPasswordField() => TextFormField(
        enabled: _passwordFielState,
        controller: _passwordTextController,
        onChanged: progressBar(),
        maxLines: 1,
        maxLength: 16,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: _hidePassword,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          counter: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  const Text('Password strength: ',
                      style:
                          TextStyle(fontSize: 12, color: global.majesticMist)),
                  Row(
                    children: _controller.progressBar$.value,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ValueListenableBuilder(
                valueListenable: _controller.validatorsWidgets$,
                builder: (context, validators, child) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: validators,
                ),
              ),
            ],
          ),
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

  Widget confirmNewaccountButtom() => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: _createButtomState ? () {} : null,
        splashColor: global.brightGrey,
        elevation: 2,
        color: global.sombreGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: const Text(
          'Create Account',
          style: TextStyle(
              color: global.brightGrey, letterSpacing: 3, fontSize: 16),
        ),
      );

  progressBar() {
    var list = <Widget>[];
    switch (_passwordTextController.text.length) {
      case 0:
        if (_controller
            .passwordCheckValidators(_passwordTextController.text.trim())) {
          list.add(const Text('none',
              style: TextStyle(fontSize: 12, color: global.naturallyCalm)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        } else {
          list.add(const Text('none',
              style: TextStyle(fontSize: 12, color: global.naturallyCalm)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        }
      case < 8:
        if (_controller
            .passwordCheckValidators(_passwordTextController.text.trim())) {
          list.add(const Text('invalid',
              style: TextStyle(fontSize: 12, color: global.red)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        } else {
          list.add(const Text('invalid',
              style: TextStyle(fontSize: 12, color: global.red)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        }
      case >= 8 && < 12:
        if (_controller
            .passwordCheckValidators(_passwordTextController.text.trim())) {
          list.add(const Text('medium',
              style: TextStyle(fontSize: 12, color: global.blue)));
          _controller.updateProgressBar(list);
          _createButtomState = true;
        } else {
          list.add(const Text('invalid',
              style: TextStyle(fontSize: 12, color: global.red)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        }
      case >= 12:
        if (_controller
            .passwordCheckValidators(_passwordTextController.text.trim())) {
          list.add(const Text('strong',
              style: TextStyle(fontSize: 12, color: global.green)));
          _controller.updateProgressBar(list);
          _createButtomState = true;
        } else {
          list.add(const Text('invalid',
              style: TextStyle(fontSize: 12, color: global.red)));
          _controller.updateProgressBar(list);
          _createButtomState = false;
        }
        break;
      default:
    }
  }
}
