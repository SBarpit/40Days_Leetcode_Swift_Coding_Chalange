

// String Compression
func stringCompressor(_ chars: inout [Character]) -> Int {
    var output = ""
    var repetation = 0
    var i = 0
    let size = chars.count
    while(i<size){
        repetation = 1
        while (i < size - 1 && chars[i] == chars[i + 1]) {
            repetation += 1
            i += 1
        }
        output.append(chars[i])
        if repetation != 1{
            output.append("\(repetation)")
        }
        i += 1
    }
    chars = []
    for i in output{
        chars.append(i)
    }
    return chars.count

}

var charactes:[Character] = ["a","a","a","b","c","c","c","d","d","d","d","d","e","c","c","c","d"]
print("Charactes array before compression: \(charactes)")
print("Length of Charactes array before compression: \(charactes.count)")
stringCompressor(&charactes)
print("Charactes array after compression: \(charactes)")
print("Length of Charactes array after compression: \(charactes.count)")


/*
// Output
Charactes array before compression: ["a", "a", "a", "b", "c", "c", "c", "d", "d", "d", "d", "d", "e", "c", "c", "c", "d"]
Length of Charactes array before compression: 17
Charactes array after compression: ["a", "3", "b", "c", "3", "d", "5", "e", "c", "3", "d"]
Length of Charactes array after compression: 11
 */
