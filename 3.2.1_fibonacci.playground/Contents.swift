import Foundation
import PlaygroundSupport

final class Fibonacci {
    public func get(num: Int64) -> Int64 {
        assert(num >= 0)
        
        if (num == 0 || num == 1) {
            return num
        }
        
        var cache: [Int64: Int64] = [0:0, 1:1]
        if (cache[num] != nil) {
            cache[num] = self.get(num: num - 2) + self.get(num: num - 1)
        }
        
        
        return cache[num]!
    }
}

print(Fibonacci().get(num: 12))
