import 'dart:convert';
import 'dart:io';
import 'package:empresa_desafio/Empresa.dart';
import 'package:empresa_desafio/endereco.dart';
import 'package:uuid/uuid.dart';
import 'package:empresa_desafio/opcoes.dart';

void main() {
  List<Empresa> lista = [];
  int opcao = 0;


  do {

    print('\t****************  MENU  ******************\n');
    print('1 - Cadastrar uma nova empresa: ');
    print('2 - Buscar empresa cadastrada por CNPJ: ');
    print('3 - Buscar empresa por CPF do Sócio: ');
    print('4 - Listar empresas cadastradas em ordem alfabética (Razão Social): ');
    print('5 - Excluir empresa por ID: ');
    print('6 - Sair');
    stdout.write('Opção:');

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        lista = cadastrar(lista);
        lista.forEach(print);
        break;
      case 2:
      findCnpj(lista);
      break;

      case 3:
      findCpfSocio(lista);
      
      break;

      case 4:
      listarEmpresa(lista);
      break;

      case 5:
      removerId(lista);
      break;

      case 6:
      print('finalizando...');
      break;

    }


  } while (opcao != 6);
  
}
