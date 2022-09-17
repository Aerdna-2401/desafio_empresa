import 'dart:convert';
import 'dart:io';
import 'package:empresa_desafio/Empresa.dart';
import 'package:empresa_desafio/endereco.dart';
import 'package:empresa_desafio/socio.dart';
import 'package:uuid/uuid.dart';


class Empresa {
  final id = Uuid().v4();

  String cnpj;
  String razaoSocial;
  String nomeFantasia;
  String telefone;
  Endereco endereco;
  Socio socio;

Empresa ({required this.cnpj,
    required this.razaoSocial, 
    required this.nomeFantasia,
    required this.telefone,
    required this.endereco,
    required this.socio});




@override
  String toString() {
    String compl = 'ID: $id';
    String compl1 = 'CNPJ: $cnpj';
    String compl2 = 'RAZAO SOCIAL: $razaoSocial';
    String compl3 = 'NOME FANTASIA: $nomeFantasia';
    String compl4 = 'TELEFONE: $telefone';
    String compl5 = 'ENDERECO: $endereco';
    String compl6 = 'SOCIO: $socio';

    return '\n$compl\n$compl1\n$compl2\n$compl3\n$compl4\n$compl5\n$compl6';



  }
}



