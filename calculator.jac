walker Calculator {
    has a:int;
    has b:int;

    can add with root entry;
    can subtract with root entry;
    can multiply with root entry;
    can divide with root entry;
}

impl Calculator.add {
    print("{} + {} = {}".format(self.a, self.b, self.a + self.b));
}

impl Calculator.subtract {
    print("{} - {} = {}".format(self.a, self.b, self.a - self.b));
}

impl Calculator.multiply {
    print("{} * {} = {}".format(self.a, self.b, self.a * self.b));
}

impl Calculator.divide {
    if self.b != 0 {
        print("{} / {} = {}".format(self.a, self.b, self.a / self.b));
    } else {
        print("Division by zero is not allowed!");
    }
}

with entry: __main__ {
    root spawn Calculator(10, 5).add;
    root spawn Calculator(10, 5).subtract;
    root spawn Calculator(10, 5).multiply;
    root spawn Calculator(10, 5).divide;
}
