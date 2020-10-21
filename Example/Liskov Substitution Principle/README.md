# Liskov Substitution Principle (LSP) Example

### LSP is stating is that every subclass/derived class should be substitutable for their base/parent class.

### For this Example we'll be using Transportation Device as our class Model

### Expectation : 
- Our subclass (Bicycle & Car) should substitutable for their parent class

### Wrong Example :
- Our subclass (Bicycle) extends TransportationDevice that has startEngine() which is not realistically capable to do that

### Correct Example :
- We create 2 parent class called VehicleWithoutEngine & VehicleWithEngine that extends TransportationDevice for Bicycle & Car class respectively
