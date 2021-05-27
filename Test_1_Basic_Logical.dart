 **********************************QUESTION NO. 1***********************************
List li=[1,2,3,4,5,6];
void main() {
  for (int i = 0; i < li.length; i++) {
    if(li[i]%2==0){
      print(li[i]);
    }
  }
}
 **********************************QUESTION NO. 2***********************************
void main() {
  List array = [1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1];
  int n = array.length;
  print(maxCons(array, n));
}

maxCons(array, n) {
  int c = 0;
  int max = 0;
  for (int i = 0; i < n; i++) {
    if (array[i] == 0) {
      c = 0;
    } else {
      c += 1;
    }
    max = c > max ? c : max;
  }
  return (max);
}

 **********************************QUESTION NO. 3 ***********************************

const a = [1,2,3,4,5,6,7,7]

function count_duplicate(a){
 let counts = {}

 for(let i =0; i < a.length; i++){
     if (counts[a[i]]){
     counts[a[i]] += 1
     } else {
     counts[a[i]] = 1
     }
    }
    for (let prop in counts){
        if (counts[prop] >= 2){
            console.log(prop)
        }
    }
}

count_duplicate(a)

 **********************************QUESTION NO. 4 ***********************************

String url = "https://my-json-server.typicode.com/typicode/demo/posts";

Future<String> getData() async {
  final response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  });
  var convertDatatojson = json.decode(response.body);
  return convertDatatojson;
};

void main() {
  data = getData();
}


 **********************************QUESTION NO. 5 ***********************************

public static void set_obj(obj k[]){
  obj temp= new obj();
  for(int i=0;i<k.length-1;i++){
    for(int j=0;j<k.length-1-i;j++){
      if(k[j].id.compareTo(k[j+1].id)>0){
        temp=k[j];
        k[j]=k[j+1];
        k[j+1]=temp;
      }
    }
  }
}
