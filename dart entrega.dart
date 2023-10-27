mixin Challenge1 {
  void run() {
    print("Ingrese un número: ");
    var stdin;
    int num = int.parse(stdin.readLineSync()!);
    int cuad = (num * num);
    if (num >= 0) {
      print("El cuadrado de ${num} es: ${cuad}.");
    } else if (num < 0) {
      print("Número negativo.");
    }
  }
}
class Challenge2 {
  void run() {
    print("Ingrese el número 1: ");
    var stdin;
    double num1 = double.parse(stdin.readLineSync()!);
    print("Ingrese el número 2: ");
    double num2 = double.parse(stdin.readLineSync()!);

    if (num1 > num2) {
      print("El doble de ${num1} es: ${num1 * 2}");
    } else {
      print("El triple de ${num2} es: ${num2 * 3}");
    }
  }
}

class Challenge3 {
  void run() {
    print("Ingrese un número: ");
    var stdin;
    double num = double.parse(stdin.readLineSync()!);
    double raiz = sqrt(num);

    if (num >= 0) {
      print("La raíz cuadrada de ${num} es: ${raiz}");
    } else {
      print("El cuadadro de ${num} es: ${num * num}");
    }
  }
}

class Challenge4 {
  void run() {
    print("Ingrese el radio del circulo: ");
    var stdin;
    double rad = double.parse(stdin.readLineSync()!);
    double perimetro = 2 * pi * rad;
    print("El perimetro del circulo con radio ${rad} es: ${perimetro}");
  }
}

class Challenge5 {
  void run() {
    print("Ingrese un número entre 1 y 7:");
    var stdin;
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print("Lunes");
        break;
      case 2:
        print("Martes");
        break;
      case 3:
        print("Miércoles");
        break;
      case 4:
        print("Jueves");
        break;
      case 5:
        print("Viernes");
        break;
      case 6:
        print("Número fuera del rango laboral.");
        break;
      case 7:
        print("Número fuera del rango laboral.");
        break;
      default:
        print("Número no válido");
        break;
    }
  }
}


class Challenge6 {
  void run() {
    print("Ingrese su salario anual:");
    var stdin;
    double salario = double.parse(stdin.readLineSync()!);
    double impuesto = salario > 12000 ? 0.15 * salario : 0;
    print("El impuesto a pagar es: ${impuesto}");
  }
}

class Challenge7 {
  void run() {
    try {
      print("Número a dividir:");
      var stdin;
      double n = double.parse(stdin.readLineSync()!);
      print("Divisor:");
      double divisor = double.parse(stdin.readLineSync()!);
      print("Residuo: ${n % divisor}");
    } on UnsupportedError {
      print("No se puede dividir por cero!");
    } catch (e) {
      print("Error al realizar la operación!");
    }
  }
}

class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 0; i <= 50; i += 2) {
      suma += i;
    }
    print("La suma de números pares entre 1 y 50 es: ${suma}");
  }
}


class Challenge9 {
  void run() {
    print("Ingrese numerador de la primera fracción:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la primera fracción:");
    var stdin;
    int den1 = int.parse(stdin.readLineSync()!);

    print("Ingrese numerador de la segunda fracción:");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la segunda fracción:");
    int den2 = int.parse(stdin.readLineSync()!);

    try {
      Fraccion fraccion1 = new Fraccion(num1, den1);
      Fraccion fraccion2 = new Fraccion(num2, den2);

      Fraccion resultado = fraccion1.Restar(fraccion2);

      print("La diferencia de ${fraccion1} y ${fraccion2} es: ${resultado}");
    } catch (e) {
      print("Error: $e");
    }
  }
}

class Fraccion {
  int numerador;
  int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw new Exception("El denominador no puede ser cero.");
    }
  }

  Fraccion Restar(Fraccion otra) {
    int nuevoNumerador =
        numerador * otra.denominador - otra.numerador * denominador;
    int nuevoDenominador = denominador * otra.denominador;
    return new Fraccion(nuevoNumerador, nuevoDenominador);
  }

  @override
  String toString() {
    return "${numerador}/${denominador}";
  }
}

class Challenge10 {
  void run() {
    print("Introduce una palabra:");
    var stdin;
    String palabra = stdin.readLineSync()!.toLowerCase();
    int longitud = palabra.length;
    print("La longitud de la palabra es: ${longitud}");
  }
}

class Challenge11 {
  void run() {
    print("Introduce el primer número:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Introduce el segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);

    print("Introduce el tercer número:");
    double num3 = double.parse(stdin.readLineSync()!);

    print("Introduce el cuarto número:");
    var stdin;
    double num4 = double.parse(stdin.readLineSync()!);

    double promedio = (num1 + num2 + num3 + num4) / 4;
    print("El promedio de los cuatro números es: ${promedio}");
  }
}

class Challenge12 {
  void run() {
    List<int> numeros = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el número ${i + 1}:");
      var stdin;
      numeros.add(int.parse(stdin.readLineSync()!));
    }
    print("El número más pequeño de la lista es: ${numeros.reduce(min)}");
  }
}
class Challenge13 {
  void run() {
    print("Escribe una palabra: ");
    var stdin;
    String palab = stdin.readLineSync()!.toLowerCase();
    int conta = 0;

    for (int i = 0; i < palab.length; i++) {
      if (palab[i] == 'a' ||
          palab[i] == 'e' ||
          palab[i] == 'i' ||
          palab[i] == 'o' ||
          palab[i] == 'u') {
        conta++;
      }
    }
    print("La cantidad de vocales en la palabra es de: ${conta}");
  }
}
class Challenge14 {
  void run() {
    print("Introduce un número:");
    var stdin;
    int number = int.parse(stdin.readLineSync()!);
    int r = 1;

    for (int i = number; i > 0; i--) {
      r = i * r;
    }
    print("El factorial de ${number} es de: ${r}");
  }
}
 class Challenge15 {  
  void run() {
    print("Introduce un número:");
    var stdin;
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 10 && numero <= 20) {
      print("El número ${numero} está en el rango de 10 a 20.");
    } else {
      print("El número ${numero} está fuera del rango de 10 a 20.");
    }
  }