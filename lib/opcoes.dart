import 'dart:convert';
import 'dart:io';
import 'package:empresa_desafio/Empresa.dart';
import 'package:empresa_desafio/endereco.dart';
import 'package:empresa_desafio/socio.dart';
import 'package:uuid/uuid.dart';

Endereco lerEndereco() {

  stdout.write('Endereço: ');
  String endereco1 = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Número: ');
  int numero = int.parse(stdin.readLineSync(encoding: utf8)!);
  stdout.write('complemento: ');
  String  complemento = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Bairro: ');
  String bairro = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Estado: ');
  String estado = stdin.readLineSync(encoding: utf8)!;
  stdout.write('CEP: ');
  String cep = stdin.readLineSync(encoding: utf8)!;

  Endereco endereco = 

    Endereco(endereco1, numero, complemento, bairro, estado, estado, cep);

    return endereco;

}


Socio lerSocio() {

print('\t************** CADASTRO SOCIO***************\n');
stdout.write('Informe o nome do sócio: ');
String nomeSocio = stdin.readLineSync(encoding: utf8)!;
stdout.write('Informe o cpf do sócio: ');
String cpfSocio = stdin.readLineSync(encoding: utf8)!;
Endereco endereco = lerEndereco();

Socio socio = Socio(nomeSocio: nomeSocio, cpfSocio: cpfSocio, endereco: endereco);

return socio;


}

List<Empresa> cadastrar(List<Empresa> cap) {
  List<Empresa> aux = cap;

  print('\t**************CADASTRO DA EMPRESA*************\n');
  stdout.write('Informe o CNPJ: ');
  String cnpj = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Informe a Razão Social: ');
  String razaoSocial = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Forneça o nome fantasia: ');
  String nomeFantasia = stdin.readLineSync(encoding: utf8)!;
  stdout.write('Informe o telefone: ');
  String telefone = stdin.readLineSync(encoding: utf8)!;
  Endereco endereco = lerEndereco();


  Empresa empresa = Empresa (cnpj: cnpj, razaoSocial: razaoSocial, 
          nomeFantasia: nomeFantasia,telefone: telefone, endereco: endereco, socio: lerSocio());

  aux.add(empresa);
  String Now() {
    final hora = DateTime.now();
    return hora.toString();

  }
  print('Empresa cadastrada com sucesso!${Now()}');
  return aux;
}

void findCnpj(List<Empresa> cap) {
  stdout.write('Forneça o cnpj que deseja encontrar: ');
  String cnpjAux = stdin.readLineSync(encoding: utf8)!;

    for (int i = 0; i < cap.length; i++) {
      if(cnpjAux == cap[i].cnpj) {
        print('Empresa encontrada: ${cap[i]}');
        i = cap.length;


      }

    }
 }

void findCpfSocio(List<Empresa> cap) {
  stdout.write('Forneça o cpf do sócio que deseja encontrar: ');
  String cpfAux = stdin.readLineSync(encoding: utf8)!;

    for (int i = 0; i < cap.length; i++) {
      if(cpfAux == cap[i].socio.cpfSocio) {
        print('Empresa encontrado: ${cap[i]}');
        i = cap.length;
      }
    }
} 

void listarEmpresa(List<Empresa> cap) {
  cap.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial.toLowerCase()));
  print('\t***********LISTA DE EMPRESAS**************\n');
  print('$cap');
} 

void removerId(List<Empresa> cap) {

  bool find = false;
  stdout.write('Informe o id da empresa que deseja remover: ');
  String idAux = stdin.readLineSync(encoding: utf8)!;

    for (int i = 0; i < cap.length; i++) {
      if(idAux == cap[i].socio.cpfSocio) {
        print('Empresa encontrado: ${cap[i]}');
        find = true;
        i = cap.length;
        print('Deseja remover essa empresa? (s/n)');
        String resultado = stdin.readLineSync(encoding: utf8)!;
          if (resultado == 's') {
            cap.removeWhere((element) => element.id == idAux);
            print('Empresa removida com sucesso!');
          }
          if(resultado == 'n') {
            print('Remoção cancelada!');
         
          }
      }  
    }
    if(!find) {
      print('Empresa não encontrada!');
    }
}

