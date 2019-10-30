import Foundation
import PlaygroundSupport

final class Fibonacci {
    static var cache: [Int: Double] = [0:0, 1:1]
    
    public func get(num: Int) -> Double {
        assert(num >= 0)
        
        if (Fibonacci.self.cache[num] == nil) {
            Fibonacci.self.cache[num] = self.get(num: num - 2) + self.get(num: num - 1)
        }
        
        return Fibonacci.self.cache[num] ?? 0
    }
}

print(Fibonacci().get(num: 10))
