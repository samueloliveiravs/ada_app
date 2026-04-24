class Endereco {
  final String cep;
  final String logradouro;
  final String bairro;
  final String estado;

  Endereco({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.estado,
  });

  factory Endereco.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("erro")) {
      throw Exception("Cep Invalido");
    }

    return Endereco(
      cep: json['cep'] ?? '',
      logradouro: json['logradouro'] ?? '',
      bairro: json['bairro'] ?? '',
      estado: json['estado'] ?? '',
    );
  }
}
