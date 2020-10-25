import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class SGoogleSignIn {
  static GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  static final _url = 'http://10.0.2.2:3000';

  static Future sigIngWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      final ggKey = await account.authentication;
      // print(account);
      final rs =
          await http.get('$_url/auth/gg', headers: {'tk': ggKey.idToken});
      print(rs.body);
      return account;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
