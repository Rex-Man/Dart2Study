main(){
    

    // 变量
var name='Bob';  
print('The name is $name');
/* 
  var 定义的变量，变量类型是通过变量值推断出来的
  如果变量赋过初值，则表明变量类型已经确定，
  这时此变量不可在将其他类型的值付给他。

  name=12; //此句放开会报错。 Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  print('The name is $name');
*/

//使用特定类型 来定义变量
String nameString='bruce';
print('The name is $nameString');

int age=18;
print('The age is $age');

//如果变量不限于单个类型，可以使用dynamic或者object来定义变量
dynamic value = 18 ;
print("value=$value");
value = 'bruce';
print("value=$value");

Object val =18;
print('val = $val');
val ='Tiger';
print('val = $val');

/*
   由于Dart 能够放在变量中的所有内容都是对象，所以如果变量没有初始化，
   那他的默认值就是null。
*/
var varNotInit;
    print('varNotInit = $varNotInit');
String stringNotInit;
    print('stringNotInit = $stringNotInit');
dynamic dynamicNotInit;
    print('dynamicNotInit = $dynamicNotInit');

/*
    如果变量的值不发生变化，那么可以使用final 或者const修饰，
    final 变量只能设置一次，const变量是编译时常量
 */
//类型声明可以省略, 普通的变量是不允许省略的，
final String afinal='abc';
print('afinal = $afinal');
final bfinal=34;
print('bfinal = $bfinal');

const String aConst='aConst';
print('aConst = $aConst');
const bConst='bConst';
print('bConst = $bConst');

//初始化后不能在赋值
//afinal='cdf'; //Error: Setter not found: 'afinal'. 因为final修饰的变量不能调用其setter方法
//aConst='ccs'; //Error: Setter not found: 'aConst'. const修饰的变量不能调用setter方法

//final 和 const 不能和 var 同时使用
//final var aFinalVar = 'abc';   //Error: Members can't be declared to be both 'final' and 'var'.
//const var aConstVar = 'test';  //Error: Members can't be declared to be both 'var' and 'const'.

final dynamic aDynamic = '';

    //const 可以使用其他const常量的值来初始化其值
    const first=100;
    const second=20;
    const result = first+second; // 
    print("const result=$result");
    /* 
      var third=40;
      const result2=first + third;  //Error: Not a constant expression.
      print("const result=$result2");

      int third =3;
      const result3=first + third;  //Error: Not a constant expression.
      print("const result=$result3");
    */
    
    //const初始化时需要一个确定的值，final不需要
    int dt=33;
    int  dtConst = TestFunction(dt);
    print("dtConst result=$dtConst"); //dtConst result=33

/**
 * const 在等号的右面，则这个变量是可以重新赋值的。包括修改某一个值
 * const 在等号的左面，则这个变量是不可以重新赋值的。包括修改某一个值
 */
    var foo = const[];
    foo=[1,2];
    print('print foo:$foo'); //print foo:[1, 2]
    foo[0]=13;
    print('print foo:$foo'); //print foo:[13, 2]

    // const  fooconstleft=[11,12];
    // fooconstleft=[1,2]; //Error: Setter not found: 'fooconst'.
    // print('print fooconst:$fooconst');
    // fooconstleft[0]=12;//此句出错。 Unsupported operation: Cannot modify an unmodifiable list
    // print('print fooconstleft:$fooconstleft');

/**
 * final 在等号的左面 ，改变这个变量的值，报错，但是修改某一个值，则可以修改。
 * 原因是 final 定义的变量 整体修改违反了final 只赋值一次的原则。
 */
    final finallist=[11,22];
    var fooval = finallist;
    print('fooval:$fooval');     //fooval:[11, 22]
    fooval=[33,44];
    print('foofinal:$fooval');   //foofinal:[33, 44]
    fooval[0]=44;
    print('foofinal:$fooval');   //foofinal:[44, 44]


     final foofinalleft=[13,14];
     //foofinalleft=[22,33]; //Error: Setter not found: 'foofinalleft'.
     print('foofinalleft:$foofinalleft');
     foofinalleft[0]=99;
     print('foofinalleft:$foofinalleft');  //foofinalleft:[99, 14]

    /* 
       值相同时final在内存中重复创建，const会引用相同值
    */
    final a1 = [11 , 22];
    final a2 = [11 , 22];
    print(identical(a1, a2));//false

    const a3 = [11 , 22];
    const a4 = [11 , 22];
    print(identical(a3, a4));//true

}

  TestFunction(final int value){
    /*
       const int ad = value;   //Error: Not a constant expression.
    */
    final int ad= value; 
    print('test value $ad');
    return ad;
}