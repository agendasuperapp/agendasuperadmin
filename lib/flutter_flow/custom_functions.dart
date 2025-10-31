import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String fcDiaSemanaPrimeiroDiaMesAno(
  int mes,
  int ano,
) {
  // return day of the week from the first day of a month and year
  final date = DateTime(ano, mes, 1);
  final formatter = DateFormat('EEEE');
  return formatter.format(date);
}

int fcUltimoDiaMesAno(
  int mes,
  int ano,
) {
  // return last day of a month and year
  return DateTime(ano, mes + 1, 0).day;
}

int fcConverterStringPInteiro(String varString) {
  // convert string to integer
  return int.parse(varString);
}

String fcConverterNumPMes(int mesNumeral) {
  // converter nome para nome do mês
  switch (mesNumeral) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return '';
  }
}

String? fcRetorDiaSemanaDeData(DateTime data) {
  // return day of the week of a specific date
  return DateFormat('EEEE').format(data);
}

DateTime fcConverterStringPData(String varString) {
  // convert string to date
  return DateTime.parse(varString);
}

int fcRetornarIndexDiaSemana(String diaSemana) {
  //  return the number of the day of the week, being Sunday 1, Monday 2
  switch (diaSemana.toLowerCase()) {
    case 'sunday':
      return 1;
    case 'monday':
      return 2;
    case 'tuesday':
      return 3;
    case 'wednesday':
      return 4;
    case 'thursday':
      return 5;
    case 'friday':
      return 6;
    case 'saturday':
      return 7;
    default:
      return 0;
  }
}

String fcRetornarMesAnterior() {
  // return month and year of previous month
  DateTime now = DateTime.now();
  DateTime previousMonth = DateTime(now.year, now.month - 1, 1);
  String month = DateFormat('MM').format(previousMonth);
  String year = DateFormat('yyyy').format(previousMonth);
  return '$year-$month-01';
}

String fcRetornarMesPosterior() {
  // return month and year of the following month
  DateTime now = DateTime.now();
  DateTime nextMonth = DateTime(now.year, now.month + 1);
  String month = DateFormat('MM').format(nextMonth);
  String year = DateFormat('yyyy').format(nextMonth);
  return '$year-$month-01';
}

int vcRetornarNumeroSemasas(
  int mes,
  int ano,
) {
  // return how many weeks a specific month has
  DateTime firstDayOfMonth = DateTime(ano, mes, 1);
  int daysInMonth = DateTime(ano, mes + 1, 0).day;
  int firstWeekdayOfMonth = firstDayOfMonth.weekday;
  int lastWeekdayOfMonth = DateTime(ano, mes, daysInMonth).weekday;
  int daysInFirstWeek = 7 - firstWeekdayOfMonth + 1;
  int daysInLastWeek = 7 - lastWeekdayOfMonth;
  int daysInMonthWithoutFirstAndLastWeeks =
      daysInMonth - daysInFirstWeek - daysInLastWeek;
  int numberOfWeeks = ((daysInFirstWeek +
              daysInMonthWithoutFirstAndLastWeeks +
              daysInLastWeek) /
          7)
      .ceil();
  return numberOfWeeks;
}

int fcComprarDiferencaEntreHoras(
  String horaA,
  String? horaB,
) {
  // compare two hours and return difference in minutes
  final DateFormat formatter = DateFormat('HH:mm');
  final DateTime a = formatter.parse(horaA);
  final DateTime b = formatter.parse(horaB ?? horaA);
  final int difference = a.difference(b).inMinutes;
  return difference.abs();
}

int fcMultiplicarNumInteiros(
  int valor01,
  int valor02,
) {
  // multiply two whole numbers
  return valor01 * valor02;
}

double fcDividirNumInteiros(
  int valor01,
  int valor02,
) {
  // divide two whole numbers
  return valor01 / valor02;
}

int fcSubtrairNumInteiros(
  int valor01,
  int valor02,
) {
  // subtract two whole numbers
  return valor01 - valor02;
}

int fcOpDividirERetornarInteiro(
  int valor01,
  int valor02,
) {
  // get whole part of a division, always round up
  return (valor01 / valor02).ceil();
}

int fcSomarNumeros(
  int valor01,
  int valor02,
) {
  // add two numbers
  return valor01 + valor02;
}

double fcSomarTotalLista(List<double> varListaValores) {
  // add values ​​from a list
  double total = 0.0;
  for (double valor in varListaValores) {
    total += valor;
  }
  return total;
}

double fcDividirDoisNumeros(
  double valor01,
  double valor02,
) {
  // operation of dividing two numbers
  return valor01 / valor02;
}

DateTime? fcConverterStringPData2(String dataString) {
  // convert date in dd/mm/y format to datetime format
  final format = DateFormat('dd/MM/y');
  return format.parse(dataString);
}

int fcCopararAnosDuasDatas(
  DateTime data1,
  DateTime data2,
) {
  // compare years between two dates
  int diffYears = data2.year - data1.year;
  if (data2.month < data1.month ||
      (data2.month == data1.month && data2.day < data1.day)) {
    diffYears--;
  }
  return diffYears;
}

int fcCountCaracteres(String texto) {
  return texto.length;
}

bool fcVerificarEmailValido(String email) {
  // check if an email is valid
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

String fcConverterStringMinusculo(String varString) {
  // convert text to lowercase
  return varString.toLowerCase();
}

String fcRemoverCaracteresELetrasString(String varString) {
  // remove characters and spaces from a string, leaving only numbers
  return varString.replaceAll(RegExp(r'[^0-9]'), '');
}

String fcRetornarPrimeiroNomePessoa(String varPalavra) {
  // return first word of a text
  var words = varPalavra.split(' ');
  if (words.isNotEmpty) {
    return words[0];
  } else {
    return '';
  }
}

int fcRetornarParteInteiraDeDecimal(double varNumeroDecimal) {
  // get integer part of a decimal number
  return varNumeroDecimal.toInt();
}

FFUploadedFile fcConverterBase64EmImagem(String base64) {
  // convert base 64 to image
  final bytes = base64Decode(base64);
  final id = DateTime.now().millisecondsSinceEpoch.toString();
  final extension = base64.split('/').first.split(':').last;
  final fileName = '$id.$extension';
  return FFUploadedFile(
    bytes: bytes,
  );
}

String fcRetornarStringDepoisCaracateres(
  String varString,
  String varCaracteres,
) {
  // return  string after specific characters
  int index = varString.indexOf(varCaracteres);
  if (index == -1) {
    return '';
  }
  return varString.substring(index + varCaracteres.length);
}

String fcRetornarStringAntesCaracteres(
  String varString,
  String varCaracteres,
) {
  // return text before specific characters
  if (varString.contains(varCaracteres)) {
    return varString.substring(0, varString.indexOf(varCaracteres));
  } else {
    return varString;
  }
}

String fcConverterStringMaiusculo(String varTexto) {
  // convert text to uppercase
  return varTexto.toUpperCase();
}

String fcFormatarDinheiro(String valor) {
  // format number for money en brazil
  final formatCurrency = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return formatCurrency.format(double.parse(valor));
}

double fcMultiplicarDouble(
  double valor01,
  double valor02,
) {
  //return textSearchIn.toUpperCase().contains(textSearchFor.toUpperCase());
  return valor01 * valor02;
}

String fcSubstituirCaractere(
  String stringCompleta,
  String caractere,
  String caractereNovo,
) {
  // replace one character with another
  return stringCompleta.replaceAll(caractere, caractereNovo);
}

bool fcVerificarNumeroDecimalValido(String varString) {
  // check if a string is a valid decimal number
  try {
    double.parse(varString);
    return true;
  } catch (e) {
    return false;
  }
}

String fcConverterInteiroPString(int varInteiro) {
  // convert integer to string
  return varInteiro.toString();
}

String fcConverterDoublePString(double varDouble) {
  // convert double to string
  return varDouble.toString();
}

double fcConverterStringPDouble(String varString) {
  // converter string para double
  try {
    return double.parse(varString);
  } catch (e) {
    return 0.0;
  }
}

String fcConverterListaPString(List<String> varLista) {
  // convert list to string
  return varLista.join(' ');
}

String fcAdicionarMinutosAHora(
  String varHora,
  int varMinutos,
) {
  // add minutes to a specific time
  // Parse the input time string to a DateTime object
  DateTime parsedTime = DateFormat('HH:mm').parse(varHora);

  // Add the specified number of minutes to the parsed time
  DateTime newTime = parsedTime.add(Duration(minutes: varMinutos));

  // Format the new time as a string in HH:mm format
  String newTimeString = DateFormat('HH:mm').format(newTime);

  return newTimeString;
}

DateTime fcAdicionarDiasEmData(
  DateTime varData,
  int varDias,
) {
  // add days to a date
  return varData.add(Duration(days: varDias));
}

bool fcValidarCPF(String varCPF) {
  // check if Brazilian CPF is valid
  // Remove any non-digit characters from the CPF
  varCPF = varCPF.replaceAll(RegExp(r'\D'), '');

  // Check if CPF has 11 digits
  if (varCPF.length != 11) {
    return false;
  }

  // Check for known invalid CPF patterns
  if (varCPF == '00000000000' ||
      varCPF == '11111111111' ||
      varCPF == '22222222222' ||
      varCPF == '33333333333' ||
      varCPF == '44444444444' ||
      varCPF == '55555555555' ||
      varCPF == '66666666666' ||
      varCPF == '77777777777' ||
      varCPF == '88888888888' ||
      varCPF == '99999999999') {
    return false;
  }

  // Calculate the first verification digit
  var soma = 0;
  for (var i = 0; i < 9; i++) {
    soma += int.parse(varCPF[i]) * (10 - i);
  }
  var resto = soma % 11;
  var digito1 = (resto < 2) ? 0 : 11 - resto;

  // Calculate the second verification digit
  soma = 0;
  for (var i = 0; i < 10; i++) {
    soma += int.parse(varCPF[i]) * (11 - i);
  }
  resto = soma % 11;
  var digito2 = (resto < 2) ? 0 : 11 - resto;

  // Check if verification digits match
  if (int.parse(varCPF[9]) == digito1 && int.parse(varCPF[10]) == digito2) {
    return true;
  } else {
    return false;
  }
}

bool fcValidarCNPJ(String varCNPJ) {
  // check if Brazilian CNPJ is valid
  var cnpj = varCNPJ.replaceAll(RegExp(r'\D'), '');

  if (cnpj.length != 14) {
    return false;
  }

  // Validate the first digit
  var soma = 0;
  var peso = 5;
  for (var i = 0; i < 12; i++) {
    soma += int.parse(cnpj[i]) * peso;
    peso = peso == 2 ? 9 : peso - 1;
  }

  var resto = soma % 11;
  var digitoVerificador1 = resto < 2 ? 0 : 11 - resto;

  if (int.parse(cnpj[12]) != digitoVerificador1) {
    return false;
  }

  // Validate the second digit
  soma = 0;
  peso = 6;
  for (var i = 0; i < 13; i++) {
    soma += int.parse(cnpj[i]) * peso;
    peso = peso == 2 ? 9 : peso - 1;
  }

  resto = soma % 11;
  var digitoVerificador2 = resto < 2 ? 0 : 11 - resto;

  return int.parse(cnpj[13]) == digitoVerificador2;
}

bool fcValidarNumeroCelular(String varNumeroCelular) {
  // check if Brazilian cell phone number is valid
  // Regular expression to match Brazilian cell phone numbers
  RegExp regex = RegExp(r'^\([1-9]{2}\) 9[0-9]{4}-[0-9]{4}$');

  // Check if the input number matches the regular expression
  return regex.hasMatch(varNumeroCelular);
}

DateTime fcAdicionarMesEmData(
  DateTime varData,
  int varMeses,
) {
  // add month to a date keeping the day even if the month is different than 30 days, return the next day when the date does not exist
  var newMonth = varData.month + varMeses;
  var newYear = varData.year;

  if (newMonth > 12) {
    newYear += newMonth ~/ 12;
    newMonth = newMonth % 12;
  }

  var newDay = varData.day;
  var newDate = DateTime(newYear, newMonth, newDay);

  if (newDate.month != newMonth) {
    newDate = DateTime(newYear, newMonth + 1, 1);
  }

  return newDate;
}

double fcSubtrairPercentualNumeroDouble(
  double varNumero,
  double varPercentual,
) {
  // subtract percentage from a number and return with only two decimal places
  double result = varNumero - (varNumero * varPercentual / 100);
  return double.parse(result.toStringAsFixed(2));
}

String fcRetornarBandeiraCartao(String varNumeroCartao) {
  // return card flag via number
  if (varNumeroCartao.startsWith('4')) {
    return 'Visa';
  } else if (varNumeroCartao.startsWith('5')) {
    return 'Mastercard';
  } else if (varNumeroCartao.startsWith('3')) {
    return 'American Express';
  } else {
    return 'Unknown';
  }
}

int fcSomarCaracteresNumericosString(String varString) {
  // add all numeric characters in a string
  int sum = 0;
  for (int i = 0; i < varString.length; i++) {
    if (varString.codeUnitAt(i) >= 48 && varString.codeUnitAt(i) <= 57) {
      sum += int.parse(varString[i]);
    }
  }
  return sum;
}

String fcGerarNomesAleatorios() {
  // create a function that generates 100 random first and last names and returns only 1 first and last name from the list
  List<String> firstNames = [
    'John',
    'Jane',
    'Michael',
    'Emily',
    'William',
    'Olivia',
    'James',
    'Sophia',
    'Benjamin',
    'Ava',
    'Robert',
    'Isabella',
    'David',
    'Mia',
    'Joseph',
    'Charlotte',
    'Daniel',
    'Amelia',
    'Matthew',
    'Harper',
    'Andrew',
    'Evelyn',
    'Ryan',
    'Abigail',
    'Christopher',
    'Grace',
    'Joshua',
    'Victoria',
    'Nicholas',
    'Madison',
    'Ethan',
    'Elizabeth',
    'Alexander',
    'Chloe',
    'Samuel',
    'Scarlett',
    'Jonathan',
    'Natalie',
    'Nathan',
    'Lily',
    'Gabriel',
    'Avery',
    'Dylan',
    'Sofia',
    'Brandon',
    'Ella',
    'Caleb',
    'Hannah',
    'Tyler',
    'Layla',
    'Luke',
    'Anna',
    'Isaac',
    'Aria',
    'Owen',
    'Zoe',
    'Jack',
    'Penelope',
    'Connor',
    'Nora',
    'Christian',
    'Riley',
    'Liam',
    'Aubrey',
    'Logan',
    'Brooklyn',
    'Hunter',
    'Claire',
    'Henry',
    'Lillian',
    'Elijah',
    'Addison',
    'Carter',
    'Mila',
    'Sebastian',
    'Leah',
    'Wyatt',
    'Audrey',
    'Jayden',
    'Ellie',
    'Julian',
    'Skylar',
    'Isaiah',
    'Lucy',
    'Charles',
    'Paisley',
    'Thomas',
    'Bella',
    'Aaron',
    'Stella',
    'Adam',
    'Maya',
    'Zachary',
    'Katherine',
    'Xavier',
    'Alexa',
    'Chase',
    'Naomi',
    'Jason',
    'Samantha',
  ];

  List<String> lastNames = [
    'Smith',
    'Johnson',
    'Williams',
    'Jones',
    'Brown',
    'Davis',
    'Miller',
    'Wilson',
    'Moore',
    'Taylor',
    'Anderson',
    'Thomas',
    'Jackson',
    'White',
    'Harris',
    'Martin',
    'Thompson',
    'Garcia',
    'Martinez',
    'Robinson',
    'Clark',
    'Rodriguez',
    'Lewis',
    'Lee',
    'Walker',
    'Hall',
    'Allen',
    'Young',
    'Hernandez',
    'King',
    'Wright',
    'Lopez',
    'Hill',
    'Scott',
    'Green',
    'Adams',
    'Baker',
    'Gonzalez',
    'Nelson',
    'Carter',
    'Mitchell',
    'Perez',
    'Roberts',
    'Turner',
    'Phillips',
    'Campbell',
    'Parker',
    'Evans',
    'Edwards',
    'Collins',
    'Stewart',
    'Sanchez',
    'Morris',
    'Rogers',
    'Reed',
    'Cook',
    'Morgan',
    'Bell',
    'Murphy',
    'Bailey',
    'Rivera',
    'Cooper',
    'Richardson',
    'Cox',
    'Howard',
    'Ward',
    'Torres',
    'Peterson',
    'Gray',
    'Ramirez',
    'James',
    'Watson',
    'Brooks',
    'Kelly',
    'Sanders',
    'Price',
    'Bennett',
    'Wood',
    'Barnes',
    'Ross',
    'Henderson',
    'Coleman',
    'Jenkins',
    'Perry',
    'Powell',
    'Long',
    'Patterson',
    'Hughes',
    'Flores',
    'Washington',
  ];

  List<String> randomNames = [];

  for (int i = 0; i < 100; i++) {
    String firstName = firstNames[math.Random().nextInt(firstNames.length)];
    String lastName = lastNames[math.Random().nextInt(lastNames.length)];
    randomNames.add('$firstName $lastName');
  }

  return randomNames[math.Random().nextInt(randomNames.length)];
}

int fcDiferencaDiasEntreDatas(
  DateTime varDataInicial,
  DateTime varDataFinal,
) {
  // compare a difernça de dias entre duas datas
  var difference = varDataFinal.difference(varDataInicial);
  return difference.inDays;
}

DateTime fcRetornarDiaSaque(DateTime varData) {
  // check if a date is Saturday or Sunday, if so return the date of the next Monday
  if (varData.weekday == DateTime.saturday) {
    return varData.add(Duration(days: 2));
  } else if (varData.weekday == DateTime.sunday) {
    return varData.add(Duration(days: 1));
  } else {
    return varData;
  }
}

double fcCalcularPercentualDoisNumeros(
  double varValor1,
  double varValor2,
) {
  // calculate percentage of two numbers
  if (varValor2 == 0) {
    return 0.0;
  }

  double percentage = (varValor1 / varValor2) * 100;
  return percentage;
}

int fcCountPalavras(String varTexto) {
  // count the number of words in a text
  if (varTexto.isEmpty) return 0; // Return 0 for empty text
  List<String> palavras = varTexto.split(RegExp(r'\s+')); // Split by whitespace
  return palavras.length; // Return the count of words
}

String fcRemoverCaracteresEEspacosString(String varString) {
  // remover caracteres e espaços de uma string, substituir as letras com acento por letras sem acentos e trocar ç por c
  // Remove caracteres especiais and spaces, replace accented letters, and 'ç' with 'c'
  varString =
      varString.replaceAll(RegExp(r'[^\w\s]'), ''); // Remove special characters
  varString = varString
      .replaceAll('á', 'a')
      .replaceAll('à', 'a')
      .replaceAll('ã', 'a')
      .replaceAll('â', 'a')
      .replaceAll('é', 'e')
      .replaceAll('ê', 'e')
      .replaceAll('í', 'i')
      .replaceAll('ó', 'o')
      .replaceAll('ô', 'o')
      .replaceAll('õ', 'o')
      .replaceAll('ú', 'u')
      .replaceAll('ç', 'c'); // Replace accented letters and 'ç'
  varString = varString.replaceAll(' ', ''); // Remove spaces
  return varString;
}

String fcRemoverAcentosString(String varConsultaNormalizada) {
  // create a removeDiacritics function
  varConsultaNormalizada = varConsultaNormalizada
      .replaceAll(RegExp(r'[áàâãäå]'), 'a')
      .replaceAll(RegExp(r'[ÁÀÂÃÄÅ]'), 'A')
      .replaceAll(RegExp(r'[éèêë]'), 'e')
      .replaceAll(RegExp(r'[ÉÈÊË]'), 'E')
      .replaceAll(RegExp(r'[íìîï]'), 'i')
      .replaceAll(RegExp(r'[ÍÌÎÏ]'), 'I')
      .replaceAll(RegExp(r'[óòôõö]'), 'o')
      .replaceAll(RegExp(r'[ÓÒÔÕÖ]'), 'O')
      .replaceAll(RegExp(r'[úùûü]'), 'u')
      .replaceAll(RegExp(r'[ÚÙÛÜ]'), 'U')
      .replaceAll(RegExp(r'[ç]'), 'c')
      .replaceAll(RegExp(r'[Ç]'), 'C');
  return varConsultaNormalizada;
}

List<String> fcConverterStringParaLista(String varString) {
  // convert multi-line string to multi-string array
  return varString.split('\n'); // Split the string by new lines
}

String fcConverterArrayParaString(List<String> varStringArray) {
  // Converter string array para uma string com várias linhas
  return varStringArray.join(
      '\n'); // Converte o array de strings em uma string com várias linhas
}
