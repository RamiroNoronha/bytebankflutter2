class Contato {
  final String nome;
  final int? numeroConta;

  Contato(
    this.nome,
    this.numeroConta,
  );

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${nome} / Numero da Conta: ${numeroConta}";
  }
}
