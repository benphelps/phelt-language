/*
    Block Comments!
*/

// single line comments

// values
let string = "Hello World";
let float = 12.35;
let hex = 0x10 + 0x20;
let binary = 0b10 + 0b11;
let octal = 0o20 + 0o10;
let truthy = true;
let falsy = false;
let nadda = nil;
let array = [1, 2, 3] + [4, 5, 6];
let table = { a: 1, b: 2, c: 3 } + { d: 4, e: 5, f: 6 };

// UTF-8 identifiers
let приклад = "ph говорить вашою мовою";
let サンプル = "phはあなたの言語を話します";
let उदाहरण = "लक्स आपकी भाषा बोलता है";

// block function, explicit return
fun add(a, b) {
  return a + b;
}

// inline function, implicit return
fun sub(a, b) a - b;

// anonymous inline function, implicit return
let mul = fun(a, b) a * b;

// anonymous block function, explicit return
let div = fun(a, b) {
    return a / b;
};

// closures
fun make_adder(a) {
    fun adder(b) a + b;
    return adder;
}
let add1 = make_adder(1);
let add2 = make_adder(2);

// calling
let sum = add(1, 2);
let one = add1(0);

// operators
let add = 1 + 2; let sub = 1 - 2;
let mul = 1 * 2; let div = 1 / 2;
let mod = 1 % 2; let _or = 1 | 2;
let xor = 1 ^ 2; let _and = 1 & 2;
let not = !true;

let eq = 1 == 2; let lt = 1 < 2;
let gt = 1 > 2;  let ne = 1 != 2;
let le = 1 <= 2; let ge = 1 >= 2;

// classes
class Vector {
    // constructor
    init(x, y) {
        this.x = x;
        this.y = y;
    }

    // dunder methods, aka magic methods, support all operators
    // __add, __sub, __mul, __div, __mod, __or, __xor, __and
    // __eq, __lt, __gt, __not
    __add(other) Vector(this.x + other.x, this.y + other.y);

    // inline methods, implicit return
    magnitude() sqrt(this.x * this.x + this.y * this.y);

    // block methods, explicit return
    angle(other) {
        return atan2(this.cross(other), this.dot(other));
    }
}

// inheritance
class Box < Vector {
    // constructor
    init(w, h, x, y) {
        // parent constructor
        super.init(x, y);
        this.w = w;
        this.h = h;
    }
}

// instantiation
let b1 = Box(10, 10, 0, 0);
let b2 = Box(10, 10, 5, 5);

// calling
let dist = b1.distance(b2);
let touching = b1.contains(b2);

// control flow
if (true) {
    // true
} else if (false) {
    // false
} else {
    // neither
}

switch(1) {
    case 1:
        // one
    case 2:
        // two
    default:
        // default
}

// loops
let y = 0;
while (y++ < 10) {
    if (y % 2 == 0) {
        continue;
    }
}

for (let i = 0; i < 10; i++) {
    if (i % 2 == 0) {
        break;
    }
}
