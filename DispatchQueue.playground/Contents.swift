import Foundation

let workItem = DispatchWorkItem {
    print(Thread.isMainThread ? 
          print("Executing in main thread") :
            print("Executing in other thread"))
}

DispatchQueue.main.async(execute: workItem)

DispatchQueue.global().async {
    print(Thread.isMainThread ?
          print("Executing in main thread") :
            print("Executing in background thread"))
}
