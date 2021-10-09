import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:swe444/Functions/home_screen/v_home_view.dart';
// import 'package:swe444/Views/users_screen.dart';
// import 'package:swe444/Views/v_home_view.dart';
import 'package:swe444/Widgets/show_snackbar.dart';
// import '../decisions_tree.dart';
import '../home_screen/mm_home_view.dart';
import '../signup_login_screen.dart';
import '../users_screen.dart';
import 'reset_password.dart';

class LoginPage extends StatefulWidget {
  final Function(User) onSignIn;

  LoginPage({required this.onSignIn});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  static const kYellow = const Color(0xdeedd03c);
  String? errorMessage;
  Snackbar? snackbar, snackbar2, snackbar3;

  final _formKey = GlobalKey<FormState>();

  String? error;
  bool isLogin = true;

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      if (_controllerEmail.text.isNotEmpty && _controllerPass.text.isNotEmpty) {
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: _controllerEmail.text, password: _controllerPass.text);
          // print(userCredential.user);
          snackbar3 = Snackbar(context, "تم تسجيل الدخول بنجاح");
          snackbar3!.showToast();
          widget.onSignIn(userCredential.user!);
        } on FirebaseAuthException catch (e) {
          switch (e.code) {
            case "invalid-email":
              setState(() {
                errorMessage = 'البريد الالكتروني غير صحيح';
              });
              break;

            case "wrong-password":
              setState(() {
                errorMessage = 'كلمة السر غير صحيحة';
              });
              break;

            case "user-not-found":
              setState(() {
                errorMessage = 'لايوجد مستخدم مسجل بهذا الحساب في تطبيق إمْداد';
              });
              break;

            case "requires-recent-login":
              setState(() {
                errorMessage =
                    'تم حظره من الجهاز بسبب نشاط غير عادي. المحاولة مرة أخرى بعد بعض التأخير قد يفتح.';
              });
              break;

            case "too-many-requests":
              setState(() {
                errorMessage =
                    'تم حظره من الجهاز بسبب نشاط غير عادي. المحاولة مرة أخرى بعد بعض التأخير قد يفتح.';
              });
              break;

            case "operation-not-allowed":
              setState(() {
                errorMessage =
                    'يجب على المستخدم إعادة المصادقة قبل تنفيذ هذه العملية';
              });
              break;

            case "network-request-failed":
              setState(() {
                errorMessage =
                    'حدث خطأ في الشبكة (مثل انتهاء المهلة أو انقطاع الاتصال أو مضيف لا يمكن الوصول إليه).';
              });
              break;

            case "credential-already-in-use":
              setState(() {
                errorMessage =
                    'أنت تقوم بترقية مستخدم مجهول إلى مستخدم Google عن طريق ربط بيانات اعتماد Google به وبيانات اعتماد Google المستخدمة مرتبطة بالفعل بمستخدم Firebase Google الحالي.';
              });
              break;

            case "user-disabled":
              setState(() {
                errorMessage =
                    'يجب على المستخدم إعادة المصادقة قبل تنفيذ هذه العملية';
              });
              break;

            default:
              setState(() {
                errorMessage = 'حدث خطأ ما ، أعد المحاولة من فضلك';
              });
              break;
          }

          snackbar = Snackbar(context, errorMessage!);
          snackbar!.showToast();

          setState(() {
            error = errorMessage;
          });
        } catch (e) {
          String ourE = e.toString();

          error = ourE;
        }
      } //end if

      if (_controllerEmail.text.isEmpty && _controllerPass.text.isEmpty) {
        errorMessage = "الرجاء إدخال البريد الالكتروني وكلمة السر ";
      } else if (_controllerEmail.text.isEmpty) {
        errorMessage = " الرجاء إدخال البريد الالكتروني ";
      } else if (_controllerPass.text.isEmpty) {
        errorMessage = "الرجاء إدخال كلمة السر ";
      }

      if (errorMessage != null) {
        snackbar2 = Snackbar(context, errorMessage!);
        snackbar2!.showToast();
      }

      if (FirebaseAuth.instance.currentUser != null) {
        String userId = await FirebaseAuth.instance.currentUser!.uid;
        var document = await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .get();

        if (document.exists) {
          if (document != null) {
            Map<String, dynamic>? data = document.data();
            if (data?['role'] == 'mosqueManager') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mmHome()));
            } else if (data?['role'] == 'volunteer') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => vHome()));
            }
          } else {
            print('Not Authorized');
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UsersScreen()));
          }
        }
      }
    }
  } //end login

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: const Text(
      //     "تسجيل الدخول",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //       color: Color(0xff334856),
      //       fontWeight: FontWeight.w700,
      //       fontFamily: 'Tajawal',
      //       fontSize: 24,
      //     ),
      //   ),
      //   backgroundColor: const Color(0xdeedd03c),
      //   bottomOpacity: 30,
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(50),
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.only(right: 15.0),
      //       child: GestureDetector(
      //         onTap: () {
      //           Navigator.pushReplacement(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => SignupLoginScreen()));
      //         },
      //         child: Icon(Icons.arrow_forward_ios),
      //       ),
      //     )
      //   ],
      //   iconTheme: IconThemeData(
      //     // Padding(padding: EdgeInsets.only(right: 20.0)),
      //
      //     color: Color(0xff334856), //change your color here.
      //   ),
      // ),
      body: Container(
        padding: new EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                right: 0,
                left: 290,
                top: 45,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => UsersScreen()));
                },
                child: Icon(
                  Icons.keyboard_backspace_rounded,
                  textDirection: TextDirection.rtl,
                  size: 30,
                  color: Color(0xff334856),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 35,
              ),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // showAlert(),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Container(
                                  height: 160,
                                  width: 160,
                                  child: Image.asset('images/logo.png')),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 55),
                              child: const Text(
                                "مرحباً بك في",
                                style: TextStyle(
                                    fontSize: 32.0,
                                    fontFamily: 'Tajawal',
                                    color: Color(0xff334856),
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            showCursor: true,
                            cursorColor: const Color(0xdeedd03c),
                            textAlign: TextAlign.right,
                            controller: _controllerEmail,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("الرجاء إدخال البريد الإلكتروني ");
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                // width: 0.0 produces a thin "hairline" border
                                borderSide: const BorderSide(
                                  color: kYellow,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: const Color(0xff334856),
                              ),
                              prefixStyle: TextStyle(
                                  fontSize: 18, color: const Color(0xff334856)),
                              hoverColor: const Color(0xff334856),
                              hintText: 'أدخل البريد الالكتروني',
                              labelText: 'البريد الالكتروني',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff334856),
                                  fontFamily: 'Tajawal'),
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff334856),
                                  fontFamily: 'Tajawal'),
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autocorrect: false,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            onSaved: (value) {
                              _controllerPass.text = value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("الرجاء إدخال كلمة المرور ");
                              }
                            },
                            showCursor: true,
                            cursorColor: const Color(0xdeedd03c),
                            textAlign: TextAlign.right,
                            controller: _controllerPass,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color(0xdeedd03c),
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Color(0xff334856),
                              ),
                              prefixStyle: const TextStyle(
                                  fontSize: 18, color: Color(0xff334856)),
                              hoverColor: const Color(0xff334856),
                              alignLabelWithHint: true,
                              hintText: 'أدخل كلمة المرور',
                              labelText: 'كلمة المرور',
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff334856),
                                  fontFamily: 'Tajawal'),
                              labelStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff334856),
                                  fontFamily: 'Tajawal'),
                            ),
                            autocorrect: false,
                            obscureText: true,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResetPasswordScreen()));
                              },
                              child: const Text(
                                'هل نسيت كلمة السر؟',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff334856),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 64),
                              primary: const Color(0xdeedd03c),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              login();
                            },
                            child: Text(
                              isLogin ? "تسجيل الدخول" : "التسجيل",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Tajawal',
                                  color: Color(0xff334856),
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
