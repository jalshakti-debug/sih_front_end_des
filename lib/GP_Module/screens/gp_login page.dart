import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class GPLoginPage extends StatefulWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _id = '';
  String _pass = '';

  GPLoginPage({super.key});
  @override
  _GPLoginPageState createState() => _GPLoginPageState();
}

class _GPLoginPageState extends State<GPLoginPage> {
  final TextEditingController _gPIdController = TextEditingController();
  final TextEditingController _pController = TextEditingController();
  // controllers for otp field
  final List<TextEditingController> _otpControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  bool _otpSent = false;

  @override
  void dispose() {
    _gPIdController.dispose();
    _pController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _sendOTP() {
    setState(() {
      _otpSent = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('OTP sent')),
    );
  }

  void _login() {
    if (widget._formKey.currentState!.validate()) {
      String otp = _otpControllers.map((c) => c.text).join();
      if (_otpSent && otp.length == 4) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login Successful')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter valid OTP')),
        );
      }
    }
  }

  void _submitForm() {
    if (widget._formKey.currentState!.validate()) {
      widget._formKey.currentState!.save();
      _login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints)=> GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: constraints.maxWidth, mainAxisExtent: constraints.maxHeight + 80),
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white,Color.fromARGB(255, 76, 165, 238)]
              )
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              resizeToAvoidBottomInset: false,
              body: Form(
                key: widget._formKey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/newLogo.png',
                        width: 600.0,
                        height: 240.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        controller: _gPIdController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: 'Gram Panchayat ID',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 247, 252, 255),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter gram panchayat ID';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          widget._id = value ?? '';
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _pController,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          labelText: 'Password',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 247, 252, 255),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 7) {
                            return 'Password must be at least 7 characters';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          widget._pass = value ?? '';
                        },
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: _sendOTP,
                        style: ElevatedButton.styleFrom(
          
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: const Text('Send OTP', style: TextStyle(color: Colors.white),),
                      ),
                      if (_otpSent) ...[
                        OtpTextField(numberOfFields: 4, showFieldAsBox: true, filled: true, fieldWidth: 60, borderWidth: 1, borderColor: Colors.black, enabledBorderColor: Colors.black, focusedBorderColor: Colors.green, disabledBorderColor: Colors.purple,),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _submitForm,
                          style: ElevatedButton.styleFrom(
                            
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: const Text('Login',style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}