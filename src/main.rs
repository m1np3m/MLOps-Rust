// declare module mlops
mod helpers;
fn main() {
    println!("Hello, MLOps!");
    println!("The sum of 2 and 3 is {}", helpers::sum(2, 3));
}
