//Classe Calculadora
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("//Calculadora - Simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //resultado do calculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent,
              ),
            ),
//campo de texto de inpu do primeiro valor
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "Informe o primeiro valor"),
              controller: t1,
            ),
            //campo de texto do segundo valor
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "Informe o segundo valor"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: multiplicar,
                ),
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: dividir,
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: subtrair,
                ),
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: somar,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar"),
                    color: Colors.red,
                    onPressed: limpar)
              ],
            ),
          ],
        ),
      ),
    );
  } //fecha o metodo build

//Atributos
  var num1;
  var num2;
  var resultado;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  //metodos
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
} //fecha a classe
