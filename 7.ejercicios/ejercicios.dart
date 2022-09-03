

void main(){
// 1
  List<int> edades = [23, 34, 54, 45, 54, 12];
  edades.sort();
  print(edades.first);
  print(edades.length);
  print(edades.reduce((a,b) => a+b)/edades.length);

// 2
  List<int> list1 = [1,2,3,4,6,8,12];
  List<int> list2 = [1,2,4,12,13,14];
  List<int> list3 = [];

  list1.forEach((element){
    if (list2.contains(element)){
      list3.add(element);
    };
  });
  print(list3);

}