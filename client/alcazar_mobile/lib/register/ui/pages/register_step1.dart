import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterStep1 extends StatefulWidget {
  const RegisterStep1({super.key});

  @override
  State<RegisterStep1> createState() => _RegisterStep1State();
}

class _RegisterStep1State extends State<RegisterStep1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(35),
            child: Stack(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paso 1 de 5",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    LinearProgressIndicator(
                      value: 0.20,
                      backgroundColor: Color(0xFFE6E0E9),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF333333),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: 280,
                    // width: 320,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Registrate",
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            hintText: "Correo",
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFF333333),
                              ),
                            ),
                            onPressed: () {
                              context.push("/register-step2");
                            },
                            child: const Text(
                              "Siguiente",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
