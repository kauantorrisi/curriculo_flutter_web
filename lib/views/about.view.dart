import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.view.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  Future<void> _githubURL() async {
    final Uri url = Uri.parse('https://github.com/kauantorrisi');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Não foi possível abrir está url -> $url';
    }
  }

  List _isHovering = [false, false, false];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.black26,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => HomeView())),
                      onHover: (value) {
                        setState(() {
                          _isHovering[0] = value;
                        });
                      },
                      child: Text(
                        'KAUAN TORRISI',
                        style: TextStyle(
                          fontSize: 24,
                          color: _isHovering[0] ? Colors.yellow : Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          _isHovering[1] = value;
                        });
                      },
                      child: Text(
                        'Sobre',
                        style: TextStyle(
                          fontSize: 24,
                          color: _isHovering[1] ? Colors.yellow : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Quem sou eu?',
                          style: TextStyle(
                            fontSize: 45,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Olá! Eu sou o Kauan, muito prazer! :D',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Sou desenvolvedor mobile, e atualmente desenvolvo com Dart e Flutter.',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Sempre fui apaixonado por tecnologia, desde pequeno mexo com computadores, e me apaixonei pela programação em 2019\nquando assisti um vídeo sobre criação de jogos, mas so vim estudar programação no início de 2020, desde então vim estudando\ne me aperfeiçoando nesta área. Estou cursando Ciência da Computação na Estácio - Inicio: 01/2022.',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Adoro criar apps para estudos, de todos os tipos, cronômetros, formulários, de loja, etc. Passo o dia estudando e sempre colocando\nem prática tudo que estudei para poder fixar melhor na minha cabeça. Esse é o meu github caso você queira ver alguns desses projetos:',
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onHover: (value) {
                              setState(() {
                                _isHovering[2] = value;
                              });
                            },
                            child: Text(
                              'Meu GitHub',
                              style: TextStyle(
                                fontSize: 18,
                                color: _isHovering[2]
                                    ? Colors.white
                                    : Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '➡ Soft Skills:',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '• Boa comunicação;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Autoditada;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Proativo;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Busca contínua por aprendizado para poder agregar mais valor ao meu trabalho e na empresa;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Boa relação interpessoal;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '➡ Conhecimento/Experiência em:',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '• Dart | Flutter;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• SOLID | Clean Code;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Git | GitFlow;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Scrum | Kanban;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• Firebase;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '• MobX | Provider;',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "• Consumo de API's REST;",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "• Criação de layouts, estilos e componentes, visando uma UX de excelência;",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "• Confortável com ambiente Unix;",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '➡ Ferramentas:',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "• Visual Studio Code;",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "• GitHub | Sourcetree;",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "• Gather | Discord | Trello | Slack;",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
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
      ),
    );
  }
}
