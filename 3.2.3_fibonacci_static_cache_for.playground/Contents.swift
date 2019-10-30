import Foundation
import PlaygroundSupport

final class Fibonacci {
    static var cache: [Int: Double] = [0:0, 1:1]
    
    public func get(num: Int) -> Double {
        assert(num >= 0)
        
        for i in 2...num {
            Fibonacci.cache[i] = Fibonacci.cache[i - 2]! + Fibonacci.cache[i - 1]!
        }
        
        return Fibonacci.cache[num] ?? 0
    }
}

print(Fibonacci().get(num: 20))
