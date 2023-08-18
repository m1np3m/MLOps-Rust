// import lib.rs add function
use hello_cargo::div;
use hello_cargo::mul;
use hello_cargo::sub;
use hello_cargo::sum;

fn main() {
    // print sum result of 1 and 2 by function from lib.rs
    println!("1 + 2 = {}", sum(1, 2));
    // print sub result of 1 and 2 by function from lib.rs
    println!("1 - 2 = {}", sub(1, 2));
    // print mul result of 1 and 2 by function from lib.rs
    println!("1 * 2 = {}", mul(1, 2));
    // print div result of 1 and 2 by function from lib.rs
    println!("1 / 2 = {}", div(1, 2));
}
