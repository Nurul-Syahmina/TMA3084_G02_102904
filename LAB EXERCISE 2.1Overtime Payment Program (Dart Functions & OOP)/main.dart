import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;

  var mina = emp.Employee(
    'Manager',
    'Madrid',
    5000,
    7,
  );

    if (mina.salary >= 4000) {
      extraPayPerHr = 10;
    } else {
      extraPayPerHr = 20;
    }

    double total = mina.salary + (mina.overtimeHr * extraPayPerHr);

    print('Total Salary = \$$total USD');
    }
