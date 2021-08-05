//: [Previous](@previous)

// How to create a subscription?
// What does a publisher without a subscription?
// What does data stream mean?


import Foundation
import Combine
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let pub: AnyCancellable = Timer.publish(every: 0.5, on: .main, in: .common)
    .autoconnect()
    .sink { (completion) in
        print("data stream completion \(completion)")
    } receiveValue: { (timestamp) in
        print("receive value: \(timestamp)")
    }







//: [Next](@next)
