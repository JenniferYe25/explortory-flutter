import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  // bool isShown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 200,
                  child: Image.asset(
                    'assets/logo.jpg',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email'),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Password',
                // suffix: IconButton(
                //   padding: EdgeInsets.all(0),
                //   iconSize: 20.0,
                //   icon: isShown
                //       ? const Icon(
                //           Icons.visibility_off,
                //           color: Colors.grey,
                //         )
                //       : const Icon(
                //           Icons.visibility,
                //           color: Colors.black,
                //         ),
                //   onPressed: () {
                //     setState(() {
                //       isShown = !isShown;
                //     });
                //   },
                // )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text('Create Account')),
                TextButton(onPressed: () {}, child: Text('Forgot Password'))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const HomePage())));
                },
                child: Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
