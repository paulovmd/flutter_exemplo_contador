import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget{
  //Cria um estado para meu Widget
  @override
  State<StatefulWidget> createState() => _ContadorScreenState();
}
/*Essa classe é responsável por criar o layout das janelas
ou componentes que utilizarão o recurso de gerenciamento do 
estado. */
class _ContadorScreenState extends State<ContadorScreen>{
  
  //Variável utilizada para incrementar o contador
  int contador = 0;

  void incrementar(){
      /*Toda operação que deve atualizar algum conteúdo na tela,
      deve envolver a operação com o método setState.*/
      setState(() {
         contador++;         
      });      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          /*Safe area é utilizado para criar uma área
          segura é visível para os componentes.*/
          body: SafeArea(
              child : Padding(
                  padding: const EdgeInsets.all(16),
                  child : Text("Valor: $contador")
                  )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: incrementar,
            child: const Icon(Icons.add)
            ),
    );   
  }


}
