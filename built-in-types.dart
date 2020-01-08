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

/**
 * const 定义的字符串，只能是全const定义的变量进行连接
 */
const aConstNum=0;
const aConstBool=true;
const aConstString='a constant string';
const validConstString = '$aConstNum $aConstBool $aConstString';
print('valid Const String : $validConstString');

//下面证明了const的变量，只能是有const的变量赋值，
var aNum=0;
var aBool=true;
var aString ='a string';
const aConstList=[1,2,3];
//const invalidConstString0 = '$aNum $aBool $aString'; Error: Not a constant expression.
//const invalidConstString1='$aNum $aBool $aString $aConstList'; Error: Not a constant expression.
// print('invalidConstString0 :$invalidConstString0'); //Error: Not a constant expression.
// print('invalidConstString1 :$invalidConstString1');  Error: Not a constant expression.


//--------------------List---------------------
/**
 *  在dart 中 所谓的list ，其实就是array ，列表使用基于0的索引，
 *  列表中可以放入不同类型的值
 */
var constantList = const[1,2,3];
//constantList[1] = 1; //Unsupported operation: Cannot modify an unmodifiable 


// 固定长度
var fixedList = List(2);
print(fixedList.length); // 2
 
fixedList[0]="hello";
fixedList[1]=123;
 print('输出定长的list：$fixedList')
//fixedList.add(1); // 报错。固定长度不能添加元素


/**
 * base 中有提到，如果将foo 重新赋值，变量foo 将不在是const 类型的变量。
 */
var foo = const[];
foo=[1,'ee',true];
foo[0]=13;
print('print foo:$foo');

/**
 *  展开运算符（...）和判空展开运算符（...?）提供想集合插入过个元素的简洁方式
 */
var list = [1, 2, 3];
var list2 = [0, ...list];
print('展开运算符 ：$list2');

var listNull;
var list2null = [0, ...?listNull];
print('判空展开运算符 ：$list2null');

/**
 * 在数组中 提供if 判断 和 for 循环输出，来构建使用条件和循环的集合
 */
bool promoActive=false;
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet' else 'no',
  promoActive?'true':'false',
  {
    if(promoActive)
    {
      'function true'
    }else{
      'function false'
    }
  }
];
print('在数组中添加if 判断输出: $nav');

var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
print('数组中的for循环输出: $listOfStrings');

var setIn=List<String>();
setIn.add('value1');
setIn.add('value2');
//setIn.add(1);//Error: The argument type 'int' can't be assigned to the parameter type 'String'.
print('用list 声明: $setIn');

//--------Set ---------
/**
 * 所谓的集合就是{}扩起来的值的集合, 可以看到，与java 一样，set是去重复的
 */
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
var halogensSet=Set<String>();
var halogensSetN=<String>{};
halogensSet.add('fluorine');
halogensSet.addAll(halogens);
halogensSetN.add('value');
halogensSetN.add('halogensSe');
print('Set 的定义和添加方式 $halogensSet');
print('Set 的定义和添加方式1 $halogensSetN');

/**
 *  展开运算符（...）和判空展开运算符（...?）提供想集合插入过个元素的简洁方式
 */

var setTest={'value1','value2'};
var setTest1={'value0',...setTest};
print('set 的展开运算符:$setTest1');

var nullSet=<String>{};
var setTest2={'value0',...?nullSet};
print('set 的判断展开运算符:$setTest2');

/**
 * 在set中 提供if 判断 和 for 循环输出，来构建使用条件和循环的集合
 */
bool promoActiveset=false;
var navset = {
  'Home',
  'Furniture',
  'Plants',
  if (promoActiveset) 'Outlet' else 'no',
  promoActiveset?'true':'false',
  {
    if(promoActive)
    {
      'function true'
    }else{
      'function false'
    }
  }
};
print('在set中添加if 判断输出: $navset');

var listOfIntsset = <int>{1,2,3};
var listOfStringsset = {
  '#0',
  for (var i in listOfIntsset) '#$i'
};
print('set中的for循环输出: $listOfStringsset');

//-------map------
/**
 * 是键值对象，键和值可以为任意对象类型，每个键仅出现一次，相同值可出现多次。
 */
//Map的定义方式
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var giftsMap = Map();
giftsMap['first'] = 'partridge';
giftsMap['second'] = 'turtledoves';
giftsMap['fifth'] = 'golden rings';

var nobleGasesMap = Map();
nobleGasesMap[2] = 'helium';
nobleGasesMap[10] = 'neon';
nobleGasesMap[18] = 'argon';

  var giftsAdd = {'first': 'partridge'};
  giftsAdd['fourth'] = 'calling birds'; // Add a key-value pair
  print('Add Map Value $giftsAdd');

  //如果你在寻找一个不存在的映射键，会返回null；
  print('获取一个不存在的key : ${giftsAdd["second"]}');

  Map<int,String> mapConst =const{
   1:'first'
  };
  //mapConst[2]='second';  //Unsupported operation: Cannot set value in unmodifiable Map
  print('测试赋值const 的map 变量 不能改变值 ${mapConst}');


/**
 *  展开运算符（...）和判空展开运算符（...?）提供想映射插入过个元素的简洁方式
 */

var tmaptest={1:'value1',2:'value2'};
var tmaptest1={3:'value0',...tmaptest};
print('map 的展开运算符:$tmaptest1');

var nullmap=Map<int,String>();
var setmap={1:'value0',...?nullmap};
print('map 的判断展开运算符:$setmap');

/**
 * 在set中 提供if 判断 和 for 循环输出，来构建使用条件和循环的集合
 */
bool promoActivemap=false;
var navmap = {
  1:'Home',
  2:'Furniture',
  3:'Plants',
  if(promoActivemap) 4:'ff' else 5:'er'
};
print('在map中添加if 判断输出: $navmap');

// Map<int,String> listOfIntsMap = {};
// var listOfStringsmap = {
//   1:'value',
//   2:'value2',
//   listOfIntsMap.map((x,y) => new MapEntry(y, x))
// };
// print('set中的for循环输出: $listOfStringsset');

}
