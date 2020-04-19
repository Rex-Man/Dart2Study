
/**
 *  1. 函数也可以被声明成变量，或者作为另一个函数的参数。也可以像调用函数一样调用类的实例变量
 *  2. 建议函数都指明返回值类型，虽然不写类型也能执行
 *  3. 函数有两种参数类型：规定参数和可选参数。先列出规定参数，可选参数跟随其后。命名成可选的参数也可以被标记为规定参数
 *  4. 可选参数可以按位置设置，或者按命名设置，但是不能同时使用
 *  5. 调用一个函数时可以用参数名字指明参数使用paramName: value
 * 
 */
main(){

    //2
    int s=isNoble(1);
    print("$s");
    //3
    //可以用参数名字指明参数使用
    // 参数名的这种方法，不用考虑参数调用的顺序，
    enableFlags(hidden:false,bold:true);
    //4
    // 如果没有child 这个参数调用会出错，因为定义这个方法的时候这个参数是必须传递参数的。
    //enableFlagsRequired(key:"gess",  child:"chile");
    //5
    //传递参数的时候可选参数可以不用传递。
    print(say('bob','Howday'));
    print(say('bob','Howday','smoke signal'));
    //6
    //不传入参数到有默认值的function里面，function 会用默认值进行计算。
    print("haveDefaultValueParamFunction:"+haveDefaultValueParamFunction());
    //位置参数的默认值例子
    print(haveDefaultValueOptionParamFunction('Test'));
}



int isNoble(int atomicNumber){
   return atomicNumber + 3;
}

//函数只有一行表达式的，可以使用尖头语法简写成
int isNobleOne(int atomicNumber) => atomicNumber + 3;

//3 
//可选参数
//可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰
//定义函数的时候使用{param1, param2, …}
enableFlags({bool bold,bool hidden}){
   print("bold: $bold, hidden : $hidden");
}
//4
//用@required标记一个已经命名的参数，来指明这是一个必选参数 ----------------这个方法有问题 @required 有问题。需要问。
// //如果在调用的时候没有child 这个参数，程序会出错。
// enableFlagsRequired({String key, @required String child})
// {
//    return key;
// }
//5 在函数参数中用[]符号包裹可选的位置参数
String say(String from , String msg,[String device]){
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
//6
/**
 * 默认参数值
 * 可以在定义函数的时候赋默认值。
 */
// 有参数名
String haveDefaultValueParamFunction({bool bold=false,bool hidden=true})
{
  return "bold $bold,hidden $hidden";
}
//位置参数
// 注意按照位置参数赋值的Function, 如果需要给参数赋默认值，必须是要在{},[]中的参数才能赋默认值，
String haveDefaultValueOptionParamFunction(String from,[String device = 'device']){
   return 'haveDefaultValueOptionParamFunction：from : $from,device : $device';
}


