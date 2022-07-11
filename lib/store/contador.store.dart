import 'package:mobx/mobx.dart';

part 'contador.store.g.dart'; //para funcionar deve-se rodar o comando "flutter pub run build_runner watch" --> o "watch" foi utilizado para o programa estar em constante observação, para uma possível re-renderização com alguma alteração de um observável

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int contador = 1000;

  @action
  void incrementar() {
    contador++; //contador = contador + 1
  }
}
