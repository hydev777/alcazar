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
          alignment: Alignment.center,
          child: SizedBox(
            height: 480,
            width: 320,
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
      ),
    );
  }
}
