# Depedency Inversion Principle (DIP) Example

### We must “depend on abstractions and not on concrete classes.”

### For this Example we'll be mocking DataAccess for getting customerName

### Expectation : 
- Our DataAccessFactory returns an Interface  

### Wrong Example :
- Our DataAccessFactory returns an concrete class 

### Correct Example :
- We make our DataAccess to conform an interface & return the class that extending the interface on the DataAccessFactory
