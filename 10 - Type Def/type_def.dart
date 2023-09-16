//? Typedef is just a pointer to a function

typedef mathmaticalOperation({
  double fNum,
  double lNum,
});

double add({
  double fNum = 0.0,
  double lNum = 0.0,
}) {
  return fNum + lNum;
}

//? Typedef can also passed as param
double subFromAdd(
  mathmaticalOperation addFunction,
  double fNum,
  double lNum,
  double subRatio,
) {
  return addFunction(fNum: fNum, lNum: lNum) - subRatio;
}

void main() {
  mathmaticalOperation m1;
  m1 = add;
  print(m1(
    lNum: 5,
    fNum: 7,
  ));
  print(subFromAdd(
    m1,
    5,
    7,
    9,
  ));
}
