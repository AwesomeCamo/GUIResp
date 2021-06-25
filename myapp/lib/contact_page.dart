import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
        return Scaffold(
          body: Center(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text(
                  'Kontakt:',
                  style: TextStyle(fontSize: 48),),
                Text(
                    '\nBetreiber Addresse\n',
                    style: TextStyle(fontSize:  14 + constraints.maxWidth / 100),),
                Text(
                  'Alle Inhalte unseres Internetauftritts wurden mit größter Sorgfalt und nach bestem Gewissen erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt.',
                  style: TextStyle(fontSize: 6 + constraints.maxWidth / 100),
                )
              ]
              ),
          ),
        );
      })),
    );
  }
}
