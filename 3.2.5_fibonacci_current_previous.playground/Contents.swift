import Foundation
import PlaygroundSupport

final class Fibonacci {
    public func get(num: Int) -> Double {
        assert(num >= 0)
        
        if num < 2 {
            return Double(num)
        }
        
        var previous: Double = 0
        var current: Double = 1
        
        for _ in 2...num {
            (current, previous) = (previous + current, current)
        }
        
        return current
    }
}

print(Fibonacci().get(num: 10))
