package main;

var i, j, k, w string;
var a, b, c, d int;
var i2, j2, k2, w2 float32;
var a2, b2, c2, d2 float64;

var (
  s1 float32;
  s2 float64;
  s3 string;
  s4 int;
);

var x3 float32 = 1;      // valid
var x4 float32 = 1.4;    // valid
var x5 string = "teste"; // valid

// var x6, x7 int =;        // syntax error actually
var x6, x7 int = 1, 2;   // valid

var i, j int = 1, 2;

func main() {
  i, j, k, k2 = 2, 3, "teste", 3.4;
};
