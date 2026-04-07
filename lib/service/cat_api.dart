class CatApi {
  Future<List<String>> fetchData() async {
    // Simula delay de rede
    await Future.delayed(const Duration(seconds: 2));

    return [
      "Gatos conseguem girar suas orelhas em até 180 graus.",
      "O ronronar de um gato pode ajudar na cicatrização de ossos.",
      "Gatos dormem cerca de 70% da vida.",
      "Cada gato tem um padrão de nariz único, como impressão digital.",
      "Gatos podem fazer mais de 100 sons diferentes.",
      "O maior salto de um gato pode ter até 6 vezes o tamanho do corpo.",
      "Gatos enxergam melhor no escuro do que humanos.",
      "Eles usam os bigodes para medir espaços.",
      "Um grupo de gatos é chamado de 'clowder'.",
      "Gatos podem correr até 48 km/h em curtas distâncias."
    ];
  }
}