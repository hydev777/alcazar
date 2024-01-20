import 'package:flutter/material.dart';

class ChooseAgency extends StatefulWidget {
  const ChooseAgency({super.key});

  @override
  State<ChooseAgency> createState() => _ChooseAgencyState();
}

class _ChooseAgencyState extends State<ChooseAgency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          height: 380,
          width: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Elije tu agencia",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 71.9,
                width: 320,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/agency_placeholder.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 208,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Sunset Dreams Realty",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                height: 71.9,
                width: 320,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/agency_placeholder.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 208,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Inter-homes Caribe Real Estate",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                height: 71.9,
                width: 320,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/agency_placeholder.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 208,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Inter-homes Caribe Real Estate",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xFF333333),
                  ),
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
                  label: const Text(
                    "Crear nueva agencia",
                    style: TextStyle(
                      color: Color(0xFF333333),
                    ),
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
