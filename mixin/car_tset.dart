mixin ElectricCar{

  chargeElectricity(){
    print('전기를 충전합니다');
  }
}
mixin PetrolCar{
  void chargePetrol(){
    print('휘발유 보충 합니다.');
  }
}

class HybridCar with ElectricCar,PetrolCar{

  @override
  chargeElectricity() {
    super.chargeElectricity();
    print('테슬라 전용 충전기를 선택합니다.');
  }

  @override
  void chargePetrol() {
    super.chargePetrol();
    print('GS 칼텍스에서 주유를 시작합니다.');
  }
}


