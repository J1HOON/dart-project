import 'dart:math';

class Box{

}



int getNum(int min, int max) {
  Random random = new Random();
  return min + random.nextInt(max-min);
}

class Unit{
  int xp = 0;

  void getXp(int _xp) {
    xp = xp + _xp;
  }

}

abstract class AttackType {
  void kick();
  void punch();
}



//플레이어 클래스 정의

class User extends Unit {
  String name ;
  int hp ;
  int minDmg;
  int maxDmg;
  int def;
  late int xp;

  User(this.name, this.hp, this.minDmg, this.maxDmg, this.def);

  // bool isDead() {
  //   if(hp <= 0) return true;
  //   else return false;
  // }
  bool isDead() => hp<=0?true : false;

  int attack() {


    super.getXp(10);
    xp = super.xp;
    return getNum(minDmg, maxDmg);
  }

  void getDmg(int dmg) {
    if(dmg <= def) dmg = 0;
    else hp -= (dmg-def);

  }

  void kick() {

  }

  void punch() {

  }

  @override
  void hello()  {
    super.hello();
  }


}


