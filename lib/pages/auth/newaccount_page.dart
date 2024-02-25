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
  final _nameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _hidePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordTextController.addListener(() {
      progressBar();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: <Widget>[
                nameField(),
                const SizedBox(height: 25),
                newPasswordField(),
                const SizedBox(height: 25),
                confirmNewaccountCard()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nameField() => TextFormField(
        controller: _nameTextController,
        maxLines: 1,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
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
  Widget newPasswordField() => Column(
        children: [
          const Text(
            'Now, let\'s work with your password\nIt has be a strong one',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 25),
          TextFormField(
            controller: _passwordTextController,
            onChanged: progressBar(),
            maxLines: 1,
            maxLength: 8,
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
                          style: TextStyle(
                              fontSize: 12, color: global.majesticMist)),
                      Row(
                        children: _controller.progressBar$.value,
                      ),
                    ],
                  ),
                  const Text('Must have at least',
                      style:
                          TextStyle(fontSize: 12, color: global.majesticMist)),
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
          ),
          const SizedBox(height: 15),
        ],
      );

  Widget confirmNewaccountCard() => const Card(
        color: global.sombreGrey,
        child: Center(
          child: Text(
            'Check your information and, if it\'s right, click confirm',
            style: TextStyle(fontSize: 16),
          ),
        ),
      );

  progressBar() {
    var list = <Widget>[];
    switch (_passwordTextController.text.length) {
      case 0:
        for (var i = 0; i < 6; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: global.majesticMist)));
        }
        _controller.updateProgressBar(list);
      case < 2:
        for (var i = 0; i < 2; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: Colors.yellowAccent)));
        }
        for (var i = 0; i < 4; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: global.majesticMist)));
        }
        list.add(const Text(' weak',
            style: TextStyle(fontSize: 12, color: Colors.yellowAccent)));
        _controller.updateProgressBar(list);
      case < 4:
        for (var i = 0; i < 4; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: Colors.lightGreen)));
        }
        for (var i = 0; i < 2; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: global.majesticMist)));
        }
        list.add(const Text(' medium',
            style: TextStyle(fontSize: 12, color: Colors.lightGreen)));
        _controller.updateProgressBar(list);
      case > 6:
        for (var i = 0; i < 6; i++) {
          list.add(const Text('*',
              style: TextStyle(fontSize: 12, color: Colors.green)));
        }
        list.add(const Text(' strong',
            style: TextStyle(fontSize: 12, color: Colors.green)));
        _controller.updateProgressBar(list);
        break;
      default:
    }
  }
}
