class ExerciseModel {
  final String id;
  final String type;
  final String title;
  final String question;
  final String? audioPrompt;
  final List<String> alternatives;
  final String correctAnswer;

  ExerciseModel({
    required this.id,
    required this.type,
    required this.title,
    required this.question,
    this.audioPrompt,
    required this.alternatives,
    required this.correctAnswer,
  });

  factory ExerciseModel.fromMap(Map<String, dynamic> map) {
    return ExerciseModel(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      question: map['question'] ?? '',
      audioPrompt: map['audioPrompt'],
      alternatives: List<String>.from(map['alternatives'] ?? []),
      correctAnswer: map['correctAnswer'] ?? '',
    );
  }
}

class LessonModel {
  final String tituloAula;
  final List<ExerciseModel> exercises;

  LessonModel({required this.tituloAula, required this.exercises});

  factory LessonModel.fromMap(Map<String, dynamic> map) {
    // Garante compatibilidade tanto com 'exercicios' quanto com 'exercises'
    var rawList = map['exercicios'] ?? map['exercises'] ?? [];
    List<ExerciseModel> exerciciosList = (rawList as List)
        .map((i) => ExerciseModel.fromMap(i as Map<String, dynamic>))
        .toList();

    return LessonModel(
      tituloAula: map['tituloAula'] ?? map['title'] ?? '',
      exercises: exerciciosList,
    );
  }
}
