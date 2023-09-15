abstract class Weapon{
  int damage;
  Weapon(this.damage);
}

class Sword extends Weapon{
  Sword(int damage) : super(damage);
}

class Bow extends Weapon{
  Bow(int damage) : super(damage);
}


mixin AttackBehavior{
  attack(Monster target);
}

class Monster with AttackBehavior{
  String name;
  num hp;
  Weapon weapon;
  Monster(this.name, this.hp,this.weapon);
  // 무기
  showInfo(){
    print('======상태창======');
    print('이름 : $name');
    print('무기 데미지 : ${weapon.damage}');
    print('현재 hp : $hp');
    print('이름 : $name');
  }

  @override
  attack(Monster target) {
    print('${this.name} 이 ${target.name} 을 공격합니다.');
    target.hp -= this.weapon.damage;
  }

}

void main() {
  Sword sword = Sword(10);
  Bow bow = Bow(5);
  Monster monster1 = Monster('드래곤', 3000, sword);
  Monster monster2 = Monster('고블린', 50, bow);
  monster1.attack(monster2);
  monster1.attack(monster2);
  monster2.showInfo();
  print('---------------');
  monster2.attack(monster1);
  monster2.attack(monster1);
  monster1.showInfo();

}