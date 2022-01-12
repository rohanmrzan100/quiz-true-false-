import 'questions.dart';

List<questions> queAns = [
  questions('The sun rises from the east', true),
  questions('The sun rises from the west', false),
  questions('The earth is round.', true),
  questions('The earth is flat', false),
  questions('Pluto is a planet', false),
  questions('Jupiter is  a planet', true),
  questions('We live in milky way galaxy', true),
  questions('We live in Andromeda galaxy', false),
  questions('There are 6 oceans on the Earth.', false),
  questions('South Africa is a continent ', false)
];

int questionCount = 0;

bool isfinished() {
  if (questionCount >= queAns.length - 1) {
    return true;
  } else {
    return false;
  }
}
