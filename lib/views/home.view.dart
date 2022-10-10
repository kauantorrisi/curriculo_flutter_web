import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kauan_curriculo_web_2022/views/about.view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Future<void> _githubURL() async {
    final Uri url = Uri.parse('https://github.com/kauantorrisi');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Não foi possível abrir essa url -> $url';
    }
  }

  Future<void> _linkedinURL() async {
    final Uri url =
        Uri.parse('https://www.linkedin.com/in/kauan-torrisi-42541a1b7/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Não foi possível abrir essa url -> $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.black26,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: const Text(
                      'KAUAN TORRISI',
                      style: TextStyle(
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text(
                      'Sobre',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const AboutView()));
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 130),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 230,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(230),
                ),
                child: Image.asset('lib/assets/images/Eu.jpeg'),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Kauan Torrisi Souza',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Mobile Developer',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  size: 30,
                ),
                onPressed: () => _githubURL(),
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 30,
                ),
                onPressed: () => _linkedinURL(),
              ),
            ],
          ),
          const SizedBox(height: 105),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '© 2022 Kauan Torrisi Souza',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
