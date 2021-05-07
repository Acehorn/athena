//REGEX
const String REGEX_EMAIL = r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const String REGEX_RFC = r'^([A-ZÑ&]{3,4}) ?(?:- ?)?(\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])) ?(?:- ?)?([A-Z\d]{2})([A\d])$';
const String REGEX_CURP = r'^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$';
const String REGEX_NAMES = r'^[a-zA-Z_áéíóúñ\s]*$';
const String REGEX_CP = r'^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$';
const String REGEX_16o15DIGITOS= r'^(?:[+0]9)?[0-9]{15,16}$';
const String REGEX_18DIGITOSCLABE= r'^(?:[+0]9)?[0-9]{18}$';
const String REGEX_VIGENCIA=r'^(0[1-9]|1[0-2])\/?(([0-9]{4}|[0-9]{2})$)';
const String REGEX_TELEFONO= r'^(?:[+0]9)?[0-9]{10}$';

//ERROR MESAGGES
const String ERROR_MESSAGE_DATO_INVALIDO = "Ingrese un dato válido";
const String ERROR_MESSAGE_REQUIRED_INPUT = "Este campo es obligatorio";
const String ERROR_MESSAGE_EMAIL = "Ingrese un email válido";
const String ERROR_MESSAGE_CP = "Ingrese un código postal válido";
const String ERROR_MESSAGE_NO_INTERIOR = "Ingrese un número válido";
const String ERROR_MESSAGE_NO_EXTERIOR = "Ingrese un número válido";


const String BORN_FOR_ADVERSITY = "Born For Adversity";