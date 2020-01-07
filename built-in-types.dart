main(){
 /**
  * Dart 的内建类型有7种
  * numbers，strings,booleans, lists arrays,sets,maps,runes,symbols
  */

/**
 * numbers 有两种数值类型， int double 两种
 * int 在Dart VM中， 值可以是-2的63次方 到 2的63次方-1.
 *     在javascript的Dart中，允许的值为-2的53次方到 2的53次方-1.
 * double 64位双精度浮点数。
 * int 和 double 都是num 的子类 
 * num 定义的变量可以重新赋值不同类型的数值(int , double),例如num 初始值为 int 的，可以改变为 double的 反之也可以。 但是其它类型不可以。
 */

 num numInt=10;
 numInt=2.3;
 //numInt='tt';  //error: A value of type 'String' can't be assigned to a variable of type 'num'.
 print("show message:$numInt");

 /**
  * 字符串与数值型进行转换
  */
  var one =int.parse('1');
  print('string to int : $one');

  double stringToDouble= double.parse('3.4');
  print('string To Double to  : $stringToDouble');

  String intToString =1.toString();
  print('int to string : $intToString');

  String doubleToString=1.1.toString();
  print('double to string : ${doubleToString}');
  
/**
 *   您可以使用${expression}将表达式的值放入字符串中。如果表达式是一个标识符，可以跳过{}
 */

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, ' +
        'which is very handy.');
assert('That deserves all caps. ' +
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. ' +
        'STRING INTERPOLATION is very handy!');
/**
 *  字符串连接
 *  1. 您可以使用相邻的字符串字面量
 *  2. 使用+运算符连接字符串
 */

var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
print('$s1');
var s2 = 'The + operator ' + 'works, as well.';
print('$s2');

/**
 * 多行表示法 使用带有单引号或双引号的三重引号
 */

var s1more = '''You can create
multi-line strings like this one.
''';
print('$s1more');

var s2more = """This is also a
multi-line string.""";
print('$s2more');

/**
 * 使用r创建原始raw字符串（转义字符等特殊字符会输出出来，而不会自动被转义）
 */
var rstring = r'In a raw string, not even \n gets special treatment.';
var nrstring = 'In a raw string, not even \n gets special treatment.';
print('have r handle string :$rstring');
print('no r handle string $nrstring');
}