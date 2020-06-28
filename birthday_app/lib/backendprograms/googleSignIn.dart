import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
String str = "";
String start=", ";
String end=".,";
String DisplayErr;
Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn().catchError((onError){print(onError.toString());
  str=onError.toString();
  try {
    int startIndex = str.indexOf(start);
    int endIndex = str.indexOf(
        end, startIndex + start.length);
    DisplayErr=str.substring(startIndex + start.length, endIndex);
    //print(DisplayErr);
  }
  catch(e)
  {
    DisplayErr="Unknown Error!";
  }
  });
  final GoogleSignInAuthentication googleSignInAuthentication =
  await googleSignInAccount.authentication.catchError((onError){print(onError.toString());
  str=onError.toString();
  try {
    int startIndex = str.indexOf(start);
    int endIndex = str.indexOf(
        end, startIndex + start.length);
    DisplayErr=str.substring(startIndex + start.length, endIndex);
    //print(DisplayErr);
  }
  catch(e)
  {
    DisplayErr="Unknown Error!";
  }
  });

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
  final AuthResult authResult = await _auth.signInWithCredential(credential).catchError((onError){print(onError.toString());
  str=onError.toString();
  try {
    int startIndex = str.indexOf(start);
    int endIndex = str.indexOf(
        end, startIndex + start.length);
    DisplayErr=str.substring(startIndex + start.length, endIndex);
    //print(DisplayErr);
  }
  catch(e)
  {
    DisplayErr="Unknown Error!";
  }
  });
  final FirebaseUser user = authResult.user;
  if(user!=null)
    {
      return("200");
    }
  else
    return("Error occured :$DisplayErr");

}

void signOutGoogle() async{
  await googleSignIn.signOut();

  print("User Sign Out");
}