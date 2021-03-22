import UIKit

let unsortedArray = [4,3,8,1,7,0]

func bubbleSort(arr: [Int]) -> [Int]{
    var array = arr
    for _ in 0..<array.count - 1{
        for j in 0..<array.count - 1{
            if(array [j] > array[j+1]){
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
            
        }
    }
    return array
}

func mergeSort(array: [Int]) -> [Int]{
    guard array.count > 1 else{
        return array
    }
    
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int]{
    
    var mergedArray: [Int] = []
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        }else{
            mergedArray.append(right.removeFirst())
        }
    }
    return mergedArray + left + right
}

struct MinHeap{
    
    var items: [Int] = []
    
    private func getLeftChildIndex(_ parentIndex: Int) -> Int{
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int{
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int{
        return (childIndex - 1) / 2
    }
    private func hasLeftChild(_ index: Int) -> Bool{
        return getLeftChildIndex(index) < items.count
    }
    private func hasRightChild(_ index: Int) -> Bool{
        return getRightChildIndex(index) < items.count
    }
    private func hasParent(_ index: Int) -> Bool{
        return getParentIndex(index) >= 0
    }
    
    private func leftChild(_ index: Int) -> Int {
        return items[getLeftChildIndex(index)]
    }
    
    private func rightChild(_ index: Int) -> Int {
        return items[getRightChildIndex(index)]
    }
    
    private func parent(_ index: Int) -> Int {
        return items[getParentIndex(index)]
    }
    
    mutating private func swap(indexOne: Int, indexTwo: Int){
        let placeholder = items[indexOne]
        items[indexOne] = items[indexTwo]
        items[indexTwo] = placeholder
    }
    
    public func peek() -> Int{
        if items.count != 0{
            return items[0]
        }else{
            fatalError()
        }
    }
    
    mutating public func poll() -> Int {
        if items.count != 0 {
            let item = items[0]
            items[0] = items[items.count - 1]
            heapifyDown()
            return item
        }else{
            fatalError()
        }
    }
    
    mutating public func add(_ item: Int){
        items.append(item)
        heapifyUp()
        
    }
}

print(bubbleSort(arr: unsortedArray))

print(mergeSort(array: unsortedArray))

