import 'package:flutter/material.dart';
class ListContent{

  String? image ;
  String? name ;
  String? price ;

ListContent({ this.image,this.name,this.price}){

}

}
List <ListContent> Listdescription =[
  ListContent(
    image: 'https://tse1.mm.bing.net/th?id=OIP.s52xmOKUEt573DRd43lX8QHaHa&pid=Api&P=0&h=220', name: 'Coffe Table', price:'10.00'),
    ListContent(
      image: 'https://tse1.mm.bing.net/th?id=OIP.53JEp2zPFQ-vddIn441SAwHaHa&pid=Api&P=0&h=220', name: 'chair', price:'20.00'
      ),
      ListContent(
      image: 'https://tse1.mm.bing.net/th?id=OIP.KpUDFw6m1OBTGh2Y7ZNLnwHaHY&pid=Api&P=0&h=220', name: 'Office Lamp', price:'49.99'
      ),
      ListContent(
      image: 'https://i5.walmartimages.com/asr/d59bbd40-5ee2-4091-9d6c-68c2e0cfd4d6.de6c2c274e582a12087effe8ff780849.jpeg', name: 'Product 2', price:'150.00'
      ),
      ListContent(
      image: 'https://tse1.mm.bing.net/th?id=OIP.oep80beX_PmRrOBqs2FEDwHaHa&pid=Api&P=0&h=220', name: 'Product 2', price:'70.00'
      ),
];