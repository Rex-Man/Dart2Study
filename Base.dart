main(){
    
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