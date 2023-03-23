import 'package:get/get.dart';

class myclass extends GetxController
{

  RxInt sum=0.obs;
  int n1=0,n2=0;

  logic(String a,String b)
  {
    n1=num.parse(a).toInt();
    n2=num.parse(b).toInt();
    sum.value=n1+n2;
  }
}