part of 'login_page.dart';

extension LoginPageChildren on LoginPage {
  Widget buildContent() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/background.png'),
          SignInButton(
            callback: () {},
          ),
        ],
      ),
    );
  }
}
