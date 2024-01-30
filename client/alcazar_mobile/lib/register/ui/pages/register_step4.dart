import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterStep4 extends StatefulWidget {
  const RegisterStep4({super.key});

  @override
  State<RegisterStep4> createState() => _RegisterStep4State();
}

class _RegisterStep4State extends State<RegisterStep4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(35),
          // alignment: Alignment.center,
          child: Stack(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paso 4 de 5",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LinearProgressIndicator(
                    value: 0.80,
                    backgroundColor: Color(0xFFE6E0E9),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF333333),
                    ),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  height: 480,
                  // width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Crea tu agencia",
                        style: TextStyle(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 230,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/agency_placeholder.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                              width: 160,
                              child: OutlinedButton(
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFFFFFFFF),
                                  ),
                                  side: MaterialStatePropertyAll(
                                    BorderSide(
                                      width: 1,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Cambiar",
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Nombre",
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
                            context.push("/register-step5");
                          },
                          child: const Text(
                            "Continuar",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            // context.push("/choose-agency");
                          },
                          child: const Text(
                            "Saltar paso",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF333333),
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
    );
  }
}
