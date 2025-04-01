# PHP

> ⬅️ [README](README.md)

## Dates & Time

### DateTime

```php
$d1 = new DateTime('2008-08-03 00:00:00');
$d2 = new DateTime('2008-08-03 00:00:01');

var_dump(
    $d1 == $d2,  // false
    $d1 != $d2,  // true
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // true
);
```

```php
$d1 = new DateTime('2008-08-03 00:00:00');
$d2 = new DateTime('2008-08-03 00:00:00');

var_dump(
    $d1 == $d2,  // true
    $d1 != $d2,  // false
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // false
);
```

```php
$d1 = (new DateTime('2008-08-03 11:11:10'))->modify('00:00');
$d2 = (new DateTime('2008-08-03 14:52:10'))->modify('00:00');

var_dump(
    $d1 == $d2,  // true
    $d1 != $d2,  // false
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // false
);
```

### DateTimeImmutable

```php
$d1 = new DateTimeImmutable('2008-08-03 00:00:00');
$d2 = new DateTimeImmutable('2008-08-03 00:00:01');

var_dump(
    $d1 == $d2,  // false
    $d1 != $d2,  // true
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // true
);
```

```php
$d1 = new DateTimeImmutable('2008-08-03 00:00:00');
$d2 = new DateTimeImmutable('2008-08-03 00:00:00');

var_dump(
    $d1 == $d2,  // true
    $d1 != $d2,  // false
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // false
);
```

```php
$d1 = (new DateTimeImmutable('2008-08-03 11:11:10'))->modify('00:00');
$d2 = (new DateTimeImmutable('2008-08-03 14:52:10'))->modify('00:00');

var_dump(
    $d1 == $d2,  // true
    $d1 != $d2,  // false
    $d1 === $d2, // false
    $d1 !== $d2, // true
    $d1 > $d2,   // false
    $d1 < $d2,   // false
);
```

```php
$d1 = (new DateTimeImmutable('2025-04-30 00:00:00'));
$d2 = $d1->modify('+ 1month');
$d3 = $d1->modify('+ 31days');

var_dump($d1->format('Y-m-d'));
var_dump($d2->format('Y-m-d'));
var_dump($d2->format('Y-m-d'));

$d1 = (new DateTimeImmutable('2025-04-01 00:00:00'));
$d2 = $d1->modify('+ 1month');
$d3 = $d1->modify('+ 31days');

var_dump($d1->format('Y-m-d'));
var_dump($d2->format('Y-m-d'));
var_dump($d3->format('Y-m-d'));
```

## Classes & Objets

### get_class

```php
$myClass = get_class(new class() {
	const FOO = 'foo';
});

var_dump($myClass::FOO); // string(3) "foo"
```

## Arrays

### Keys & Values

#### array_combine

```php
$keys = ["sky", "grass", "orange"];
$values = ["blue", "green", "orange"];

var_dump(array_combine($keys, $values));

// array(3) {
//   ["sky"]    => string(4) "blue"
//   ["grass"]  => string(5) "green"
//   ["orange"] => string(6) "orange"
// }
```

#### array_keys

```php
$array = [
    "sky" => "blue",
    "grass" => "green",
    "orange" => "orange",
];

var_dump(array_keys($array));

// array(3) {
//   [0] => string(3) "sky"
//   [1] => string(5) "grass"
//   [2] => string(6) "orange"
// }
```

#### array_values

```php
$array = [
    "sky" => "blue",
    "grass" => "green",
    "orange" => "orange",
];

var_dump(array_values($array));

// array(3) {
//   [0] => string(4) "blue"
//   [1] => string(5) "green"
//   [2] => string(6) "orange"
// }
```

### Search

#### in_array

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    in_array(100, $array),          // true
    in_array(200, $array),          // true
    in_array("100", $array),        // true
    in_array("200", $array),        // true
    in_array("Bananas", $array),    // true
    in_array("Pineapples", $array), // false
    in_array("bananas", $array),    // false
    in_array("pineapples", $array), // false
);
```

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    in_array(100, $array, true),            // true
    in_array(200, $array, true),            // false
    in_array("100", $array, true),          // false
    in_array("200", $array, true),          // true
    in_array("Bananas", $array, true),      // true
    in_array("Pineapples", $array, true),   // false
    in_array("bananas", $array, true),      // false
    in_array("pineapples", $array, true),   // false
);
```
#### array_search

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    array_search(100, $array),          // int(3)
    array_search(200, $array),          // int(4)
    array_search("100", $array),        // int(3)
    array_search("200", $array),        // int(4)
    array_search("Bananas", $array),    // int(1)
    array_search("Pineapples", $array), // bool(false)
    array_search("bananas", $array),    // bool(false)
    array_search("pineapples", $array), // bool(false)
);
```

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    array_search(100, $array, true),            // int(3)
    array_search(200, $array, true),            // bool(false)
    array_search("100", $array, true),          // bool(false)
    array_search("200", $array, true),          // int(4)
    array_search("Bananas", $array, true),      // int(1)
    array_search("Pineapples", $array, true),   // bool(false)
    array_search("bananas", $array, true),      // bool(false)
    array_search("pineapples", $array, true),   // bool(false)
);
```

#### list

```php
$array = ["coffee", "brown", "caffeine"];
list($drink, $color, $power) = $array;

var_dump(
    $drink, // string(6) "coffee"
    $color, // string(5) "brown"
    $power, // string(8) "caffeine"
);
```

```php
list($a, list($b, $c)) = array(1, array(2, 3));

var_dump(
    $a, // int(1)
    $b, // int(2)
    $c, // int(3)
);
```

```php
list(1 => $second, 3 => $fourth) = [1, 2, 3, 4];

var_dump(
    $second, // int(2)
    $fourth, // int(4)
);
```

```php
list($hello, $wild, $world) = explode("|", "hello|wild|world");

var_dump(
    $hello, // string(5) "hello"
    $wild,  // string(4) "wild"
    $world, // string(5) "world"
);
```

#### extract

```php
$array = [
    "clothes" => "t-shirt",
    "size"    => "medium",
    "color"   => "blue",
];

extract($array);

var_dump(
    $clothes,   // string(7) "t-shirt"
    $size,      // string(6) "medium"
    $color,     // string(4) "blue"
);
```

#### compact

```php
$clothes = "t-shirt";
$size = "medium";
$color = "blue";

$array = compact("clothes", "size", "color");

var_dump($array);

// array(3) {
//   ["clothes"] => string(7) "t-shirt"
//   ["size"]    => string(6) "medium"
//   ["color"]   => string(4) "blue"
// }

```

### Filtering

#### array_filter

```php
$numbers = [20, -3, 50, -99, 55];

$positive = array_filter($numbers, function($n) {
    return $n > 0;
});

var_dump($positive);

// array(3) {
//   [0] => int(20)
//   [2] => int(50)
//   [4] => int(55)
// }
```

```php
$numbers = [20, -3, 50, -99, 55];

$positive = array_filter($numbers, fn($n) => $n > 0);

var_dump($positive);

// array(3) {
//   [0] => int(20)
//   [2] => int(50)
//   [4] => int(55)
// }
```

```php
// Remove 0, null, false, "0"
$array = [-1, 0, 1, null, true, false, "-1", "0", "1", "null", "true", "false"];
$notEmpty = array_filter($array);

var_dump($notEmpty);

// array(8) {
//   [0]  => int(-1)
//   [2]  => int(1)
//   [4]  => bool(true)
//   [6]  => string(2) "-1"
//   [8]  => string(1) "1"
//   [9]  => string(4) "null"
//   [10] => string(4) "true"
//   [11] => string(5) "false"
// }
```

### Compare

#### array_diff

```php
<?php

$a = [1, 2, 3];
$b = [1, 2, 3];

var_dump(
	count($a) === count($b),   // true
	empty(array_diff($a, $b)), // true
	empty(array_diff($b, $a)), // true
);

$a = [1, 2, 3];
$b = [1, 2, 4];

var_dump(
	count($a) === count($b),   // true
	empty(array_diff($a, $b)), // false
	empty(array_diff($b, $a)), // false
);


$a = [1, 2, 3];
$b = [1, 2];

var_dump(
	count($a) === count($b),   // false
	empty(array_diff($a, $b)), // false
	empty(array_diff($b, $a)), // true
);

$a = [1, 2, 3];
$b = [1, 2, 3, 4];

var_dump(
	count($a) === count($b),   // false
	empty(array_diff($a, $b)), // true
	empty(array_diff($b, $a)), // false
);
```

### Resources

- https://code.tutsplus.com/working-with-php-arrays-in-the-right-way--cms-28606t

## Enum VS Const

### Enum

```php
enum OrderStatus: int
{
    case CANCELED = 0;
    case ORDERED = 1;
    case PACKED = 2;
    case IN_TRANSIT = 3;
    case DELIVERED = 4;
}

class Order {
    private OrderStatus $status;
    
    public function setStatus(OrderStatus $status): void {
        $this->status = $status;
    }
   
    public function getStatus(): OrderStatus {
        return $this->status;
    }
}

$order = new Order();
$order->setStatus(OrderStatus::ORDERED);

printf("Order status (name): %s\n", $order->getStatus()->name);     // ORDERED
printf("Order status (value): %s\n", $order->getStatus()->value);   // 1
```

### Const


### Fibonacci

#### Interface

```php
<?php declare(strict_types=1);

namespace App\Util\Example;

interface FibonacciInterface
{
    /**
     * Returns the rank term `n` from the Fibonacci sequence.
     *
     * @param int $n
     * @return int
     */
    public function rank(int $n): int;
}
```

#### Implementation

> Which is the best implementation?

```php
<?php declare(strict_types=1);

namespace App\Util\Example;

class Fibonacci01 implements FibonacciInterface
{
    /**
     * {@inheritdoc}
     */
    public function rank(int $n): int
    {
        // Naive recursive algorithm.

        if ($n <= 1) {
            return $n;
        }

        return $this->rank($n - 1) + $this->rank($n - 2);
    }
}
```

```php
<?php declare(strict_types=1);

namespace App\Util\Example;

class Fibonacci02 implements FibonacciInterface
{
    /**
     * {@inheritdoc}
     */
    public function rank(int $n): int
    {
        // Linear algorithm.

        $i = 0;
        $j = 1;

        for ($k = 0; $k < $n; $k++) {
            $temp = $i + $j;
            $i = $j;
            $j = $temp;
        }

        return $i;
    }
}
```

```php
<?php declare(strict_types=1);

namespace App\Util\Example;

class Fibonacci03 implements FibonacciInterface
{
    /**
     * {@inheritdoc}
     */
    public function rank(int $n, int $a = 0, int $b = 1): int
    {
        // Terminal recursive algorithm.

        return ($n > 0) ? $this->rank($n - 1, $b, $a + $b) : $a;
    }
}
```

```php
<?php declare(strict_types=1);

namespace App\Util\Example;

class Fibonacci04 implements FibonacciInterface
{
    /**
     * {@inheritdoc}
     */
    public function rank(int $n): int
    {
        // "It does the job" algorithm.

        switch ($n) {
            case 1:
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            case 6:
                return 8;
            case 7:
                return 13;
            case 8:
                return 21;
            case 9:
                return 34;
            case 10:
                return 55;
            case 11:
                return 89;
            case 12:
                return 144;
            default:
                return 0;
        }
    }
}
```

### Resources

- https://medium.com/@vlreshet/4-reasons-to-use-php-enums-instead-of-old-fashioned-class-constants-86adf2282991

> ⬅️ [README](README.md)