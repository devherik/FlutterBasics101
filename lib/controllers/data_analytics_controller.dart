class DataAnalyticsController {
  // qual o formato que devemos receber datas agrupadas?
  double mediaNaoAgrupado(List<double> data) {
    double sum = 0;
    for (var i = 0; i < data.length; i++) {
      sum += i;
    }
    final media = sum / data.length;
    return media;
  }

  mediaAgrupado() {}

  double medianaNaoAgrupado(List<double> data) {
    double mediana = 0;
    if (data.length % 2 == 0) {
      double firstNum = data.length / 2;
      double secondNum = firstNum + 1;
      mediana = data[firstNum.toInt()] + data[secondNum.toInt()];
      return mediana / 2;
    } else {
      mediana = (data.length + 1) / 2;
      return mediana;
    }
  }

  List<double> modaNaoAgrupado(List<double> data) {
    //return a list with the most repeated number(s), where the first item is the most repeated
    data.sort((a, b) => a.compareTo(b));
    double count = 0, occurrences = 0;
    List<double> numbers = [];
    for (var a = 0; a < data.length; a++) {
      for (var b = 0; b < data.length; b++) {
        if (data[a] == data[b]) {
          count++;
        }
      }
      if (count > occurrences) {
        occurrences = count;
        numbers[0] = data[a];
      } else if (count == occurrences) {
        numbers.add(data[a]);
      }
      count = 0;
    }
    return numbers;
  }

  variancia() {}
  desvioQuadraticoTotal() {}
}
