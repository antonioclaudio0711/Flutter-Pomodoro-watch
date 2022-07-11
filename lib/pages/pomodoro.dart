import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/EntradaTempo.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    valor: store.tempoTrabalho,
                    titulo: 'Trabalho',
                    incremento: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.incrementarTempoTrabalho,
                    decremento: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    valor: store.tempoDescanso,
                    titulo: 'Descanso',
                    incremento: store.iniciado && store.estaDescansando()
                        ? null
                        : store.incrementarTempoDescanso,
                    decremento: store.iniciado && store.estaDescansando()
                        ? null
                        : store.decrementarTempoDescanso,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
