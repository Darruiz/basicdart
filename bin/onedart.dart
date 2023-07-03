import 'dart:ffi';

import 'package:onedart/onedart.dart';
import 'package:test/test.dart';

void main() {
  /*
  Init em variáveis

  var ter = 4;
  var rer = 5;
  var resul = rer + ter;
  var nome = 'Darruiz';
  String nome = 'Darruiz';
  int nome = 3;
  Object nome = 'Darruiz';
  dynamic nome = 'Darruiz';
  Dynamic é uma VÁRIAVEL dinamica que p
  ermite alterar valor facilmente
  após definição
  print('A soma de $ter + $rer é de $resul meu nome é $nome');

  Valor padrão/Default value
Algumas variáveis não podem receber valor nulo  non-nullable types
Quando adicionado ? ao lado do tipo então a variável
 passa a poder receber um valor nulo/null
ela precisa ser INICIALIZADA
  Object? ex = null;
  double ex = null;
  num ex = null;
  int ex = null;
  String ex = null;
  Iterable ex = null;
  bool ex = null;
  List ex = null;

  print(ex);

  Late variables ajuda a declarar e inicializar posteriomente
  variaveis de instancia e de nivel superior

  late var n5 = _getn5();
   print('Valor é $n5');
}

int _getn5() {
  var n5 = 100;
  print('Valor é $n5 está vindo da func');
  return n5;

  exemplo 2

  late String nome1 = getnome1();
  print('O nome é $nome1');
}

getnome1() {
  var nome1 = 'Darruiz';
  return nome1;

  Ex de func 3

  var n1 = 10;
  var n2 = 10;
  dynamic r = soma(n1, n2);
   print('A soma de $n1 + $n2 é de $r');
  var n3 = 5;
  var n4 = 10;
   r = soma(n3, n4);
   print('A soma de $n3 + $n4 é de $r');
  r = div(n1, n2);
   print('A div de $n1 por $n2 é de $r');
  r = div(n3, n4);
   print('A div de $n3 por $n4 é de $r');
}

soma(var n1, var n2) {
  var r = n1 + n2;
   return r;
}

div(var n1, var n2) {
   var r = n1 / n2;
   return r;

  Final e const caso o valor da variavel nunca mude ou tenha que mudar
  fianl em tempo de execução ou produção pode ter ser valor
   alterado via função ex abaixo

  final teste = funnome();

  print('$teste');

funnome() => 'teste 45';

Porem isso só da certo com final já com const é necessário que ela conheça
o valor já no ambiente de compilação e precisa ser
puxado pelo valor dele ou buscar valor dele
Exemplo abaixo

  const teste = 'teste 45';
  print(teste);

teste() => 'teste 45';

  final não se preucupa com valor apenas com sua atribuição no final
  os valores não são constantes já const você congela os valores

  Tipos integrados Buillt-in types  (tipos integrados) numeros, strings e booleanos
  para adicionar um 's em outras linguas usar \ caso o valor seja de uso

   var ing = 'it\'s great';
  print(ing);
   ou usar diferentes "" exemplo abaixo

  var ing = "It's great";
   print(ing);

  concatenar / concatenando em dart

  var nome = "Darruiz";
  var txt = 'Eu sou o "$nome"';
  var leng = "Dart";
  var lear = 'e estou estudando $leng';
   print(' $txt  $lear');

Exemplo com tratamento de string

 var nome = "Darruiz".toUpperCase();
 var txt = 'Eu sou o "$nome"';
 var leng = "Dart".toUpperCase();
 var lear = 'e estou estudando $leng';
 print(' $txt  $lear');

  adição depois do valor da string para tratamento da mesma
  ou podemos tambem colocar ${variavel.tratamento}
   após o . dentro das ${} podemos fazer o tratamento de string
  Isso é para acionar propriedade do objeto

  var nome = "Darruiz";
  var txt = 'Eu sou o "${nome.toUpperCase()}"';
  var leng = "Dart";
  var lear = 'e estou estudando ${leng.toUpperCase()}';
  print(' $txt  $lear');

aqui podemos substituir o valor de uma string para modificar o valor original

   var nome = "Darruiz";
   var txt = 'Eu sou o "${nome.replaceAll(nome, 'Jorge')}"';
   var leng = "Dart";
   var lear = 'e estou estudando ${leng.toUpperCase()}';
   print(' $txt  $lear');

   Exs de booleanos com if para exemplos de salários

  var nome = 'Darruiz';
  var ltr = "a";
  var n1 = 1800;
  var n2 = 340;
  var ref = 3000;
  var sm = soma(n1, n2);
  if (nome.contains(ltr)) {
    print("O nome $nome contem a letra $ltr");
    if (n1 + n2 >= ref) {
      print("O $nome ganha mais que 3000 ele ganha $sm");
    } else {
      print('$nome ganha menos que $ref ele ganha $sm');
    }
 }


soma(n1, n2) {
  var sm = n1 + n2;
  return sm;
}

Exemplos de aumento em 1 pessoa

  var nome = "Darruiz";
  var sal = 1998;
  var min = 1999;

  print("$nome ganha $sal");
  if (sal <= min) {
    var aum = 1.10;
    var nsal = sal * aum;
    print("Como o $nome ganha menos que $min ele irá receber $aum de aumento"
        " isso dara um novo salário de $nsal");
  }

Exemplo de aumento com func

  var nome = "Darruiz";
  var sal = 1800;
  var min = 1801;
  print("$nome ganha $sal");
  if (sal < min) {
    var aumet = 1.50;
    var nsal = aum(sal, aumet);

    print("Como $nome ganha menos que $min ele irá receber $aumet de salário"
        "seu salário passara de $sal para $nsal");
  }

aum(n1, n2) {
  var au = n1 * n2;
  return au; }

Ex com promoção

   var nome = "Darruiz";
   var promo = true;
   var sal1 = 3500;
   print("$nome é junior e ganha $sal1");
   if (promo == true) {
     var sal2 = sal1 * 4;
     print(
         "$nome foi promovido para pleno seu salário passa de $sal1 para $sal2");
   }

  Listas / list / lists arrays no dart são listas que herdam diretamente ou indiretamento do object
   Ex de lista => var lista = [];
  ex com list
  var empl = ["Jorge", "Pedro", "Carlos"];

  if (empl.length < 4) {
   print("Os funcionários atuais são $empl");
   var nempl = ["Paulo", "Gustavo"];
   var tot = [empl, nempl];
  print("Os novos funcionários são $nempl agora o time completo é $tot");
   }

  vetor bi dimencional + seleção parcial / parce
  chave e valor exemplo var ex = [ {"Chave": "valor"}, {"Chave2": "valor2"}]
  esse é o conceito bi dimencional

  var infos = [
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
    {"nome": "Darruiz", "sal": 5000},
    {"nome": "Paulo", "sal": 4500},
    {"nome": "Jorge", "sal": 4000},
    {"nome": "Gustavo", "sal": 6000},
  ];

  for (var info in infos) {
    print('Nome: ${info["nome"]} Salário: ${info["sal"]}');
    if (int.parse(info["sal"].toString()) <= 5000) {
      var aut = int.parse(info["sal"].toString()) * 1.5;
      print('Novo salário de ${info["nome"]}: $aut');
    }
  }

Exs de adição com loop em listas

 var infos = [
   {"nome": "Darruiz", "sal": 4000},
   {"nome": "Darruiz", "sal": 4000},
 ];

 while (infos.length < 150000) {
   infos.add({"nome": "Darruiz", "sal": "5000"});
 }

 for (var info in infos) {
   print("Nome: ${info['nome']}  Salário: ${info['sal']}");
 }

Conjuntos set exs: var set = {Dz, Pm, ex}; Não aceitam valores bidimencionados (Sets)

Tipos de repetições / loops

  var max = 10;
  var max1 = 25;
  for (var n1 = 0; n1 <= max; n1++) {
    print(n1);
    if (n1 >= max) {
      while (n1 < max1) {
        n1++;
        print(n1);
      }
    }
    if (n1 == max1) {
      print("n1 é igual a $n1");
    }
  }

  Teste de condicionais
   var infos = [
     {'nome': 'Darruiz', 'nota': 10},
     {'nome': 'Gustavo', 'nota': 5},
     {'nome': 'Paulo', 'nota': 7}
   ];
   for (var info in infos) {
     if (int.parse(info["nota"].toString()) <= 6) {
       print("Aluno ${info['nome']} está reprovado tirou ${info['nota']}");
     } else {
       print("O aluno ${info['nome']} foi aprovado pois tirou ${info['nota']}");
     }
   }

 var infos = [
   {"marca": "BMW", "price": 154000},
   {"marca": "Chevrolet", "price": 67000},
   {"marca": "Mercedes", "price": 120000}
 ];
 for (var info in infos) {
   if (int.parse(info["price"].toString()) >= 100000) {
     print("O carro da marca ${info["marca"]} é de luxo");
   } else {
     print("O carro da marca ${info["marca"]} é popular");
   }
 }

 var carteira = 95000;
 var infos = [
   {'carro': 'BMW', 'preço': 120000},
   {'carro': 'Mercedes', 'preço': 100000},
   {'carro': 'Ford', 'preço': 90000},
   {'carro': 'Chevrolet', 'preço': 80000},
   {'carro': 'Porsche', 'preço': 5000000},
 ];

 for (var info in infos) {
   var precocarro = int.parse(info['preço'].toString());
   if (int.parse(info['preço'].toString()) <= carteira) {
     var res = carteira - precocarro;
     print(
         "Você pode comprar o carro da ${info['carro']} que custa R\$${info['preço']}"
         " O valor restante na sua carteira após comprar um ${info['carro']} é de R\$$res");
   } else {
     var fal = precocarro - carteira;
     print(
         "Você não pode comprar um carro da ${info['carro']} você precisa de mais R\$$fal para compralo.");
   }
 } 

 introdução a classes e metodos class methods 
 classe / calss sempre vair se referir a um objeto do mundo real 
 construtores




 codigo abaixo 
 O código em questão cria uma lista chamada infos que contém objetos do tipo InfoCarro.
  Cada objeto InfoCarro representa informações sobre uma pessoa e o carro que ela possui.

A estrutura InfoCarro possui duas propriedades: nome, que representa o 
nome da pessoa, e carro, que é um objeto do tipo Carro.

A estrutura Carro possui várias propriedades, como cor, marca,
 cilindros, ano e modelo, que representam características do carro.

O código utiliza um loop for-in para percorrer cada elemento da 
lista infos. Para cada elemento, ele verifica se a marca do carro é igual
 a 'Ferrari' ou 'Porsche'. Se a condição for verdadeira, ele imprime uma
  mensagem específica usando as informações da pessoa e do carro. Caso contrário,
  ele imprime uma mensagem genérica.

Aqui está uma explicação passo a passo do código:

O código define a lista infos contendo objetos do tipo InfoCarro. Cada objeto 
é criado com um nome de pessoa e um objeto Carro correspondente.
Inicia-se o loop for-in para iterar sobre cada elemento da lista infos.
Dentro do loop, a condição if verifica se a marca do carro é igual a 'Ferrari' ou 'Porsche'.
Se a condição for verdadeira, o código imprime uma mensagem específica 
utilizando as informações da pessoa e do carro, incluindo a marca, 
o modelo, o ano, o número de cilindros e a cor do carro.
Caso a condição seja falsa, o código imprime uma mensagem genérica 
com as informações da pessoa e do carro.
O loop continua até percorrer todos os elementos da lista infos.
Após o término do loop, o programa é concluído.
O resultado final será a impressão das mensagens correspondentes
 para cada elemento da lista, de acordo com as condições especificadas.

Certifique-se de que as estruturas InfoCarro e Carro estão corretamente
 definidas e as propriedades possuem os valores esperados para que o código funcione corretamente.
 

  var infos = [
    InfoCarro('Darruiz', Carro('Ferrari', '408', 12, 2020, 'Vermelha')),
    InfoCarro('Dimitri', Carro('Porsche', '911', 8, 2020, 'Preta')),
    InfoCarro('Gustavo', Carro('Chevrolet', 'Cobalt', 3, 2018, 'Branco')),
    InfoCarro('Diego', Carro('Ford', 'Fusion', 6, 2016, 'Preto')),
  ];

  for (var info in infos) {
    if (info.carro.marca == 'Ferrari' || info.carro.marca == 'Porsche')
      print(
          "O ${info.nome} é dono de uma ${info.carro.marca} modelo ${info.carro.modelo}"
          " ano ${info.carro.ano} com ${info.carro.cilindros} cilindros, com a cor ${info.carro.cor}");
    else {
      print(
          "O ${info.nome} é dono de um ${info.carro.marca} modelo ${info.carro.modelo}"
          " ano ${info.carro.ano} com ${info.carro.cilindros} cilindros, da cor ${info.carro.cor}");
    }
  }
}

class InfoCarro {
  String nome;
  Carro carro;

  InfoCarro(this.nome, this.carro);
}

class Carro {
  String cor;
  String marca;
  int cilindros;
  int ano;
  String modelo;

  Carro(this.marca, this.modelo, this.cilindros, this.ano, this.cor);
  



  var infos = [
    infocel('Darruiz', cel('Samsung', 'S23', 12, 128, 'verde água', 0)),
    infocel('Gustavo', cel('Apple', 'Iphone 12', 4, 128, 'Branco', 0)),
    infocel('Diego', cel('Samsung', 'S20', 8, 128, 'Preto', 0)),
  ];

  for (var info in infos) {
    print("O ${info.nome} é dono do celular da marca ${info.celu.marca}"
        " modelo ${info.celu.modelo} com ${info.celu.ram}GB RAM e ${info.celu.rom}GB ROM"
        " e possui a cor ${info.celu.cor} e tem o preço de ${info.celu.price}");
  }
}

class cel {
  String marca;
  String modelo;
  int rom;
  int ram;
  String cor;
  double price;

  cel(this.marca, this.modelo, this.ram, this.rom, this.cor, this.price) {
    calculateprice();
  }
  void calculateprice() {
    price = 500 * ram.toDouble();
  }
}

class infocel {
  String nome;
  cel celu;
  infocel(this.nome, this.celu);
} 

Explicação completa desse codigo com classes sobre celulares / celular 
A classe cel é definida com as seguintes propriedades:

marca: uma string que representa a marca do celular.
modelo: uma string que representa o modelo do celular.
rom: um inteiro que representa a capacidade de armazenamento ROM do celular em GB.
ram: um inteiro que representa a capacidade de armazenamento RAM do celular em GB.
cor: uma string que representa a cor do celular.
price: um double que representa o preço do celular. Inicialmente, é definido como 0.
O construtor da classe cel é definido, que recebe os argumentos 
para inicializar as propriedades da classe. Ele também chama o método 
calculateprice() para calcular o preço com base na quantidade de RAM.

O método calculateprice() é definido na classe cel. 
Ele multiplica a quantidade de RAM (ram) por 500 e armazena
 o resultado na propriedade price. O valor de ram é convertido em um double antes da multiplicação.

A classe infocel é definida com as seguintes propriedades:

nome: uma string que representa o nome do proprietário do celular.
celu: um objeto da classe cel que representa as informações do celular.
A lista infos é criada, contendo instâncias da classe infocel. 
Cada instância contém o nome do proprietário e as informações do respectivo celular.

O loop for-in itera sobre cada elemento da lista infos. 
Em cada iteração, a string formatada é impressa utilizando as propriedades do objeto info:

info.nome representa o nome do proprietário.
info.celu.marca representa a marca do celular.
info.celu.modelo representa o modelo do celular.
info.celu.ram representa a capacidade de armazenamento RAM do celular.
info.celu.rom representa a capacidade de armazenamento ROM do celular.
info.celu.cor representa a cor do celular.
info.celu.price representa o preço do celular.
Em resumo, o código cria uma lista de informações de celulares e, em seguida, 
itera sobre essa lista para exibir detalhes sobre cada celular, 
incluindo o nome do proprietário, marca, modelo, capacidade de armazenamento RAM e ROM,
 cor e preço. O preço é calculado com base na quantidade de RAM do celular.


//Exemplo 3 de tipo dessa classe

  var infos = [
    infopc('Darruiz', pc('I9 9900K', 64, 4000, 1000, true)),
    infopc('Diego', pc('Ryzen 5 5600', 16, 1000, 600, true)),
    infopc('Gustavo', pc('i7 4790', 16, 500, 500, true)),
    infopc('Fernando', pc('i7 4790K', 8, 480, 600, false)),
    infopc('José', pc('Celeron Dual Core', 4, 240, 300, false))
  ];
  for (var info in infos) {
    if (info.pcs.pvd == true) {
      print("O pc do ${info.nome} tem placa de vídeo "
          " e possui o processador ${info.pcs.proc} conta com "
          "${info.pcs.ram}GB RAM e também ${info.pcs.rom}GB ROM, "
          "e a fonte que puxa tudo isso conta com ${info.pcs.fonte}W de potência.");
    } else {
      print("O pc do ${info.nome} não tem placa de vídeo "
          " e possui o processador ${info.pcs.proc} conta com "
          "${info.pcs.ram}GB RAM e também ${info.pcs.rom}GB ROM, "
          "e a fonte que puxa essa merda conta com ${info.pcs.fonte}W de potência.");
    }
  }
}

class infopc {
  String nome;
  pc pcs;
  infopc(this.nome, this.pcs);
}

class pc {
  String proc;
  int ram;
  int rom;
  int fonte;
  bool pvd;

  pc(this.proc, this.ram, this.rom, this.fonte, this.pvd);
}



Mais um ex de classes

  var casas = [
    infoclass('Darruiz', casa('São Paulo', 750, 10800, 0)),
    infoclass('Diego', casa('Bauru', 140, 3569, 0)),
    infoclass('Dimitri', casa('Bauru', 250, 5687, 10)),
  ];
  for (var info in casas) {
    print("O Sr.${info.nome} tem uma casa na cidade de ${info.cas.cidade}"
        " com ${info.cas.mquadrados}M2 com um valor por metro quadrado de R\$${info.cas.pmq}"
        " totalizando R\$${info.cas.price}");
  }
}

class infoclass {
  String nome;
  casa cas;
  infoclass(this.nome, this.cas);
}

class casa {
  String cidade;
  int mquadrados;
  double pmq;
  double price;
  casa(this.cidade, this.mquadrados, this.pmq, this.price) {
    calculateprice();
  }
  calculateprice() {
    price = pmq * mquadrados;
  }
}

iniciar conceito de classe abstrata / abstract class tem que seguir um contrato
conceito de herança extent extents  

  brl1 Brl1 = brl1();
  brl2 Brl2 = brl2();
  print(Brl1.barulhos());
  if (Brl1.barulhos() == Brl1.barulhos()) {
    print(Brl2.barulhos());
  }
}

abstract class barulho {
  String barulhos();
}

class brl1 implements barulho {
  String barulhos() {
    return "Hello world";
  }
}

class brl2 implements barulho {
  String barulhos() {
    return "Olá";
  }
}


Exemplo de herança logo abaixo 
  print(valor2().valores + valor2().valor3);
}

class valor {
  int valores = 15;
}

class valor2 extends valor {
  int valores = 15;
  int valor3 = 20;
}

conceito de polimorfismo

  pagamento Pagamento = pagarcomboleto();
  Pagamento.pagar();

  pagamento PagamentoPix = pagarcompix();
  PagamentoPix.pagar();

  falar girafas = girafa();
  girafas.falando();
  falar dinos = dino();
  dinos.falando();
}

abstract class pagamento {
  void pagar();
}

class pagarcomboleto implements pagamento {
  void pagar() {
    print("Pagando com boleto");
  }
}

class pagarcompix implements pagamento {
  void pagar() {
    print("Pagando com PIX");
  }
}

abstract class falar {
  void falando();
}

class girafa implements falar {
  @override
  void falando() {
    print("Eu sou uma girafa");
  }
}

class dino implements falar {
  @override
  void falando() {
    print("Eu sou uma dinossauro");
  }
}

poliformismo

  pagamento pixs = pagarcompix();
  pixs.pagar();
  pagamento carts = pagarcomcartao();
  carts.pagar();
}

abstract class pagamento {
  void pagar();
}

class pagarcompix implements pagamento {
  void pagar() {
    print("Pagando com pix");
  }
}

class pagarcomcartao implements pagamento {
  void pagar() {
    print("Pagando com cartão");
  }
}


  carro carro1 = ferrari();
  carro1.anda();
  carro carro2 = gol();
  carro2.anda();
}

abstract class carro {
  void anda();
}

class ferrari implements carro {
  void anda() {
    print("Estou andando a 400km/H");
  }
}

class gol implements carro {
  void anda() {
    print("Estou andando a 80km/H");
  }
}


  var infos = [
    infocar("Darruiz", carro("Lamborghini", "Veneno", 1987, 12, "Preta")),
    infocar("Gustavo", carro("Lamborghini", "Veneno", 1987, 12, "Preta")),
    infocar("Diego", carro("Lamborghini", "Veneno", 1987, 12, "Preta")),
  ];
  for (var info in infos) {
    print("O ${info.nome}");
  }
}

class infocar {
  String nome;
  dynamic carro;

  infocar(this.nome, this.carro);
}

class carro {
  String marca;
  String modelo;
  int ano;
  int cilindros;
  String cor;

  carro(this.marca, this.modelo, this.ano, this.cilindros, this.cor);
}

  var num1 = 10;
  var num2 = 20;
  var opr = "multi";

  if (opr == "add") {
    somar(num1, num2);
  } else if (opr == "sub") {
    sub(num1, num2);
  } else if (opr == "div") {
    div(num1, num2);
  } else if (opr == "multi") {
    multi(num1, num2);
  }
}

void somar(n1, n2) {
  var r = n1 + n2;
  print(r);
}

void div(n1, n2) {
  var r = n1 / n2;
  print(r);
}

void sub(n1, n2) {
  var r = n1 - n2;
  print(r);
}

void multi(n1, n2) {
  var r = n1 * n2;
  print(r);
}
*/
}
