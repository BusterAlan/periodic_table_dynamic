class OxidationAlgoritm {

  static List<String> setOxidationNumbers(List<int> n) {

    List<String> result = [];
    Set<int> seen = {};

    for (int i = 0; i < n.length; i++) {

      if (!seen.contains(n[i])) {

        if (n.contains(-n[i])) {

          result.add('±${n[i]}');
          seen.add(n[i]);
          seen.add(-n[i]);

        } else {

          result.add(n[i].toString());
          seen.add(n[i]);

        }

      }

    }

    return result;

  }

}

