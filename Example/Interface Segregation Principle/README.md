# Interface Segregation Principle (ISP) Example

### A client should never be forced to implement an interface that it doesn’t use or clients shouldn’t be forced to depend on methods they do not use.

### For this Example we'll be using Transportation Device as our class Model

### Expectation : 
- Our subclass (Bicycle & Car) should have an interface according to the classes functionality itself  

### Wrong Example :
- Our TransportationDevice class is forced to conform changeEngine() function, thus made our Bicycle class have its functionality 

### Correct Example :
- We create 2 parent classes called VehicleWithoutEngine & VehicleWithEngine that only extends intented interface functions for our Bicycle & Car classes
