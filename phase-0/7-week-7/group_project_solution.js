function arrayMath(array){

  var sum, median, mean;
     sum = getSum(array);
  median = getMedian(array);
    mean = getMean(array);
  console.log('Your calculations are complete, the sum is '+sum+', the median is '+median+' and the mean is '+mean);
}

function getSum(array){
  var total = 0;
  array.forEach(function(el){
    total += el;
  });
  return total;
}
function getMedian(array){
  array.sort(function(a, b){return a-b});
  var median, center;
  var len = array.length;
  isEven = (len % 2 == 0) ? true: false;
  if(isEven){
     var indexes = [len/2,len/2-1];
     var total = 0;
     indexes.forEach(function(el){
       total += this[el];
     }, array);
     median = total/2;
  }
  else{
    center = (len-1)/2;
    median = array[center];
  }

  return median;
}

function getMean(array){
  var total = 0;
  array.forEach(function(el){
    total += el;
  });
  return total/array.length;

}

arrayMath([5,4,1,20,5]);