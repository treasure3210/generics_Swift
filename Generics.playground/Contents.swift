import Foundation

/// Function

func displayData<T>(data: T) {
    print(data)
}

displayData(data: "Hello World")

/// Class

class MyData<T> {
    var data: T
    init(data: T) {
        self.data = data
    }
    
    func getData() -> T {
        return self.data
    }
}

var myInt = MyData<Int>(data: 6)
var myString = MyData<String>(data: "Launchpad by Vog")

print("My Int: \(myInt.getData())")
print("My String: \(myString.getData())")

/// Constraints

class MyData1<T: Numeric> {
    var data: T
    init(data: T) {
        self.data = data
    }
    
    func getData() -> T {
        return self.data
    }
}

var myInt2 = MyData1(data: 6)

print("My Int2: \(myInt2.getData())")
