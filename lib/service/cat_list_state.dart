sealed class CatListState {}

class LoadinCatListState extends CatListState {}

class EmptyCatListState extends CatListState {}

class ErrorCatListState extends CatListState {
  final String erro;

  ErrorCatListState({required this.erro});
}

class GettedCatListState extends CatListState {
  final List<String> dados;

  GettedCatListState({required this.dados});
}

// class CatListState {
//   final bool isLoading;
//   final String erro;
//   final List<String> dados;

//   CatListState({
//     required this.isLoading,
//     required this.erro,
//     required this.dados,
//   });

//   factory CatListState.empty() {
//     return CatListState(isLoading: false, erro: "", dados: []);
//   }

//   CatListState copyWith({bool? isLoading, String? erro, List<String>? dados}) {
//     return CatListState(
//       isLoading: isLoading ?? this.isLoading,
//       erro: erro ?? this.erro,
//       dados: dados ?? this.dados,
//     );
//   }
// }
