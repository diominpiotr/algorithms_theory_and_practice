import Foundation
import PlaygroundSupport

final class Fibonacci {
    static var cache: [Double] = [0, 1]
    
    public func get(num: Int) -> Double {
        assert(num >= 0)
        
        if (num < 2) {
            return Double(Fibonacci.cache[num])
        }
        
        for i in 2...num {
            Fibonacci.cache.append(Fibonacci.cache[i - 2] + Fibonacci.cache[i - 1])
        }
        
        return Fibonacci.cache[num]
    }
}

print(Fibonacci().get(num: 100))
