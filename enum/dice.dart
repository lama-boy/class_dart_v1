import 'dart:math';

// 주사위의 여섯 면을 나타내는 열거형
enum DiceFace { one, two, three, four, five, six }

// 주사위 클래스
class Dice {
  // 주사위를 던져 랜덤한 면을 반환 하는 메서드
  DiceFace roll() {
    final random = Random();
    print("DiceFace.values.length: ${DiceFace.values.length}");
    // 0 ~ 5 까지 난수 출력
    final randomFaceIndex = random.nextInt(DiceFace.values.length);
    return DiceFace.values[randomFaceIndex];
  }
}

void main() {
  final dice = Dice();
  final rolledFace = dice.roll();
  print("값 확인 : $rolledFace");

  // 던진 결과에 따라 메시지 출력
  switch (rolledFace) {
    case DiceFace.one:
    case DiceFace.two:
    case DiceFace.three:
      print("낮은 수가 나왔어");
    case DiceFace.four:
    case DiceFace.five:
      print("그럭저럭");
    case DiceFace.six:
      print("최상위 숫자가 나왔어");
  }
}
