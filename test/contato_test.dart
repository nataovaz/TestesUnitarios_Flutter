import 'package:contatos/models/contato.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should build a valid Contact", () {
    Contato contato = Contato(
        nome: "Natan Pinto", telefone: "123", email: "neitan@hotmail.com");
    expect(contato.nome, "Natan Pinto");
  });
}
