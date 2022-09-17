import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:empresa_desafio/Empresa.dart';
import 'package:empresa_desafio/endereco.dart';
import 'package:empresa_desafio/socio.dart';
import 'package:uuid/uuid.dart';


class Socio {

  String nomeSocio;
  String cpfSocio;
  Endereco endereco;


Socio ({ required this.nomeSocio,
    required this.cpfSocio,
    required this.endereco});

@override
    String toString() {
    String inf1 = 'Nome do Sócio: $nomeSocio';
    String inf2 = 'CPF do Sócio: $cpfSocio';
    String inf3 = 'Endereço: $endereco';

    return '\n$inf1\n$inf2\n$inf3';
  }

}