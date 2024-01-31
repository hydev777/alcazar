import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterStep5 extends StatefulWidget {
  const RegisterStep5({super.key});

  @override
  State<RegisterStep5> createState() => _RegisterStep5State();
}

class _RegisterStep5State extends State<RegisterStep5> {
  String selectedValue = "Agente";

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
                    "Paso 5 de 5",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LinearProgressIndicator(
                    value: 1,
                    backgroundColor: Color(0xFFE6E0E9),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF333333),
                    ),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  height: 420,
                  width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Invita a tu equipo",
                        style: TextStyle(fontSize: 22),
                      ),
                      const Text(
                        "Siempre podras cambiar los miembros de tu equipo y sus roles luego",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 56,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 155,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        label: Text(
                                          "Correo",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        contentPadding: EdgeInsets.only(
                                          left: 16,
                                          top: 4,
                                          bottom: 4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  DropdownMenu<String>(
                                    width: 107,
                                    initialSelection: selectedValue,
                                    onSelected: (String? value) {
                                      selectedValue = value!;
                                    },
                                    label: const Text(
                                      "Rol",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    inputDecorationTheme:
                                        const InputDecorationTheme(
                                      filled: true,
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      constraints:
                                          BoxConstraints(maxHeight: 49),
                                    ),
                                    dropdownMenuEntries: [
                                      "Agente",
                                      "2",
                                      "3",
                                      "4",
                                      "5"
                                    ].map<DropdownMenuEntry<String>>(
                                        (String value) {
                                      return DropdownMenuEntry<String>(
                                        value: value,
                                        label: value,
                                      );
                                    }).toList(),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete_outline),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 56,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 155,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        label: Text(
                                          "Correo",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        contentPadding: EdgeInsets.only(
                                          left: 16,
                                          top: 4,
                                          bottom: 4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  DropdownMenu<String>(
                                    width: 107,
                                    initialSelection: selectedValue,
                                    onSelected: (String? value) {
                                      selectedValue = value!;
                                    },
                                    label: const Text(
                                      "Rol",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    inputDecorationTheme:
                                        const InputDecorationTheme(
                                      filled: true,
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      constraints:
                                          BoxConstraints(maxHeight: 49),
                                    ),
                                    dropdownMenuEntries: [
                                      "Agente",
                                      "2",
                                      "3",
                                      "4",
                                      "5"
                                    ].map<DropdownMenuEntry<String>>(
                                        (String value) {
                                      return DropdownMenuEntry<String>(
                                        value: value,
                                        label: value,
                                      );
                                    }).toList(),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete_outline),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: FilledButton.icon(
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFFF5F5F5),
                                  ),
                                ),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Color(0xFF333333),
                                ),
                                label: const Text(
                                  "Añadir miembro",
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xFF333333),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Invitar",
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
