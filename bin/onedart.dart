void main() {
  //Init em variáveis

  //var ter = 4;
  //var rer = 5;
  //var resul = rer + ter;
  //var nome = 'Darruiz';
  //String nome = 'Darruiz';
  //int nome = 3;
  //Object nome = 'Darruiz';
  //dynamic nome = 'Darruiz';
  ////Dynamic é uma VÁRIAVEL dinamica que p
  //ermite alterar valor facilmente
  //após definição
  //print('A soma de $ter + $rer é de $resul meu nome é $nome');

  //Valor padrão/Default value
//Algumas variáveis não podem receber valor nulo  non-nullable types
//Quando adicionado ? ao lado do tipo então a variável
// passa a poder receber um valor nulo/null
//ela precisa ser INICIALIZADA
  //Object? ex = null;
  //double ex = null;
  //num ex = null;
  //int ex = null;
  //String ex = null;
  //Iterable ex = null;
  //bool ex = null;
  //List ex = null;

  //print(ex);

  //Late variables ajuda a declarar e inicializar posteriomente
  //variaveis de instancia e de nivel superior

  //late var n5 = _getn5();
  // print('Valor é $n5');
//}

//int _getn5() {
  //var n5 = 100;
  //print('Valor é $n5 está vindo da func');
  //return n5;

  //exemplo 2

  //late String nome1 = getnome1();
  //print('O nome é $nome1');
//}

//getnome1() {
  //var nome1 = 'Darruiz';
  //return nome1;

  //Ex de func 3

  //var n1 = 10;
  //var n2 = 10;
  //dynamic r = soma(n1, n2);
  // print('A soma de $n1 + $n2 é de $r');
  //var n3 = 5;
  //var n4 = 10;
  // r = soma(n3, n4);
  // print('A soma de $n3 + $n4 é de $r');
//  r = div(n1, n2);
  // print('A div de $n1 por $n2 é de $r');
//  r = div(n3, n4);
  // print('A div de $n3 por $n4 é de $r');
//}

//soma(var n1, var n2) {
  //var r = n1 + n2;
  // return r;
//}

//div(var n1, var n2) {
  // var r = n1 / n2;
  // return r;

  //Final e const caso o valor da variavel nunca mude ou tenha que mudar
  //fianl em tempo de execução ou produção pode ter ser valor
  // alterado via função ex abaixo

  //final teste = funnome();

  //print('$teste');

//funnome() => 'teste 45';

//Porem isso só da certo com final já com const é necessário que ela conheça
//o valor já no ambiente de compilação e precisa ser
//puxado pelo valor dele ou buscar valor dele
//Exemplo abaixo

  //const teste = 'teste 45';
  //print(teste);

//teste() => 'teste 45';
}
