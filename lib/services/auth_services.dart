import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? gUser =
        await GoogleSignIn(
          clientId:
              '54658743084-smhbe54kqv06u743jpiuvocdsv458amo.apps.googleusercontent.com',
        ).signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
