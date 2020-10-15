class Fruit {
   final String name;

   Fruit(this.name);

   // ignore: missing_return
   bool sweet(String name,{int index, double rating}){
      print('Hello from sweet');
   }

   dynamic origin(){
      print('Hello from origin');
   }

   @override
   // ignore: hash_and_equals
   bool operator ==(Object o){
      if (identical(this,o)) return true;
      return  o is Fruit && o.name == name;
   }

   @override
   String toString(){
      return 'Fruit {name: $name}';
   }

}
