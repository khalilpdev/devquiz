import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Leandro Khalil",
      photoUrl:
          "https://avatars.githubusercontent.com/u/82157454?s=400&u=36b9ad6e8fcbda0cfb89e512149529b01acef63e&v=4",
    );
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        questionAwnsered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito top"),
              AwnserModel(title: "Show de bola", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito top"),
              AwnserModel(title: "Show de bola", isRight: true),
            ],
          )
        ],
      ),
    ];
    state = HomeState.sucess;
  }
}
