import 'dart:convert';
import 'dart:io';
import 'package:empresa_desafio/Empresa.dart';
import 'package:empresa_desafio/endereco.dart';
import 'package:empresa_desafio/socio.dart';
import 'package:uuid/uuid.dart';




class Endereco {

  String endereco1;
  int numero; 
  String complemento;
  String bairro;
  String cidade;
  String estado;
  String cep;

Endereco(this.endereco1, this.numero, this.complemento, this.bairro, 
this.cidade, this.estado, this.cep);

@override
  String toString() {
  String dadoEnd = 'Endereço: $endereco1';
  String dadoEnd1 = 'Número: $numero';
  String dadoEnd2 = 'Ccomplemento: $complemento';
  String dadoEnd3 = 'Bairro: $bairro';
  String dadoEnd4 = 'Cidade: $cidade';
  String dadoEnd5 = 'Estado: $cep';

    return '\n$dadoEnd\n$dadoEnd1\n$dadoEnd2\n$dadoEnd3\n$dadoEnd4\n$dadoEnd5';
    
  }


}