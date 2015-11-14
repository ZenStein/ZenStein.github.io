/**
 * Created by ShahinPro on 11/14/15.
 */
// Code goes here

// Code goes here



 var  newObj = {};
 var newObj2 = {};
 var newObj3 = {};
 var newObj4 = {};
 var value = {value1:'someVal',value2:'someotherVal'};
 var totals = {_for:{total:0},_forEach:{total:0},_forEachOpt:{total:0},_each:{total:0}};
 var   start , stop;
 var funcs = {
   populate:function (el){
     this[el] = el
   }
 }
 function L(v){
   console.log(v);
 }

 function initArr(len){
   var a = [];
   for (x=0; x<len; ++x) {
     a[x] = x;
   }
   return a;
 }

function runBenchmark(len){

//init array to param len
  var arr = initArr(len);
  var for_each, for_each_with_param, _for_, my_each;
//start first test
  start = Date.now();
  for (x=0; x<len; ++x) {
    newObj[x] = value;
  }
  stop = Date.now();

//store result
 _for_ = stop - start;

//start forEach test, NOT USING 3rd param
  start = Date.now();
  arr.forEach(function(el){newObj3[el] = value });
  stop = Date.now();
//store result
  for_each = stop - start;

//start forEach test USING THIRD PARAM
  start = Date.now();
  arr.forEach(funcs.populate, newObj2);
  stop = Date.now();
//store result
  for_each_with_param = stop - start;

//start my personal function, which uses forEach
  start = Date.now();
  each(arr, 'populate', newObj4);
  stop = Date.now();
//store result
  my_each = stop - start;


totals._for.total += _for_;
totals._forEach.total += for_each;
totals._forEachOpt.total += for_each_with_param;
totals._each.total += my_each;
var winner = '';
 if(for_each_with_param <= for_each && for_each_with_param <= _for_ && for_each_with_param <= my_each){
   winner =  ' forEachWithArg, winning time: '+ for_each_with_param;
 }
 if(for_each <= for_each_with_param && for_each <= _for_ && for_each <= my_each){
   winner +=  ' for_each, winning time: '+ _for_each;
 }
 if(_for_ <= for_each_with_param && _for_ <= for_each && _for_ <= my_each){
   winner += ' for, winning time: '+ _for_;
 }
 if(my_each <= for_each_with_param && my_each <= for_each && my_each <= _for_){

   winner += ' my_each, winning time: '+ my_each;
 }
 if(winner === ''){
   winner = 'No clear winner';
 }
 L('----------Compare Results-----------');
 L('         forEach : '+for_each);
 L('forEach [option] : '+for_each_with_param);
 L('             for : '+_for_);
 L('      my forEach : '+my_each);
 L('------------------------------------');

 return winner;
}


function compareTimes(numCompares, iterationPerCompare){
for(var y = 0;y<numCompares; y++){
L(runBenchmark(iterationPerCompare));
}
}


compareTimes(20, 200000);

L('Total for for : ' + totals._for.total);
L('Total for forEach : ' + totals._forEach.total);
L('Total for forEachOpt : ' + totals._forEachOpt.total);
L('Total for each : ' + totals._each.total);


 function each(a, func, obj){


 a.forEach(funcs[func], obj);
 return obj;
 }
