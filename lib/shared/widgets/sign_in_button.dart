import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key, required this.callback}) : super(key: key);

  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      width: double.infinity,
      height: 48.0,
      child: MaterialButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: callback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.facebook,
              color: Colors.white,
            ),
            SizedBox(width: 8.0,),
            Text(
              'Đăng nhập với Facebook',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
