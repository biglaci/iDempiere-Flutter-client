class Texts {
  //MARK: Default String
  static String titleApp() => 'iDempiere fluttERP';
  static String titleHome() => 'Home';
  static String welcomeMsg() => 'iDempiere';

  //MARK: Button
  static String signIn() => 'Sign In';
  static String signUp() => 'Sign Up';

  //MARK: Login Page
  static String empty() => '';
  static String login() => 'Login';
  static String name() => 'Name';
  static String email() => 'Email';
  static String password() => 'Password';
  static String rePassword() => 'Confirm Password';
  static String forgotPass() => 'Forgot Password';
  static String valueEmail() => 'value email';
  static String valuePass() => 'value pass';
  static String valiEmail() => 'Please enter your email';
  static String valiPassword() => 'Please enter your password';
  static String txtTitleFirstLogin() => 'Welcome to';
  static String txtTitleSecLogin() => 'the iDempiere  Login!';
  static String txtTitleSecRegister() => 'the Mobile ERP system!';
  static String txtDescLogin() => 'Sign in to Access Your Mobile ERP';
  static String txtDescRegister() =>
      'Sign Up to Access Your Mobile ERP';
  static String txtSwitchRegister() => 'Don\'t have an account? Sign up';
  static String txtSwitchLogin() => 'I already have an account? Sign In';

  //MARK: Keys
  static String isLoginKey() => 'isLogged';
  static String isGrid() => 'isGrid';
  static String regEx() => r'^[a-z A-Z]+$';
  static String regExEmail() =>
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$';
  static String regExPass() => r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,}$';

  //MARK: URL
  static String baseUrl() => 'https://dev.idempiere.sk/api/v1/';
  static String baseUrlLocal() => 'http://0.0.0.0:3003/';

  // Hardcoded login credentials
  static String emailLogin = 'admin@mail.com';
  static String passwordLogin = '12345678';

  //MARK: Other
  static String txtSearch() => 'Search...';
}
