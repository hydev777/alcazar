import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final Widget logoCircleRaw = SvgPicture.asset(
    "assets/logo_circle_raw_3.svg",
    semanticsLabel: 'Acme Logo',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: SizedBox(
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/logos/logo_circle_raw_black_1.png'),
                    ),
                  ),
                  // child: logoCircleRaw,
                ),
                const SizedBox(
                  height: 27.92,
                ),
                const Text(
                  "Conectamos agencias inmobiliarias con clientes a nivel nacional",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0XFF333333),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Gestiona tus propiedades y colabora con tu equipo con tu equipo de forma rápida y fácil",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(
                  height: 44,
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
                      context.push('/register-step1');
                    },
                    child: const Text(
                      "Registrate",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFFFFFFF),
                      ),
                    ),
                    onPressed: () {
                      context.push('/login');
                    },
                    child: const Text(
                      "Ya estoy registrado",
                      style: TextStyle(
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
