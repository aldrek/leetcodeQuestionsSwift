import UIKit

print(addBinary("10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101" , "1"))

func addBinary(_ a: String, _ b: String) -> String {
    var result = ""
    var firstStringarr  = Array(a)
    var SecondStringarr  = Array(b)

    var firstStringSize  = firstStringarr.count - 1
    var secondStringSize = SecondStringarr.count - 1
    var carry = 0
    // loop and add for each loop reserve if there is carry

    while (firstStringSize >= 0 || secondStringSize>=0 ){
        var sum = carry

        if(firstStringSize >= 0 ) {sum += Int(String(firstStringarr[firstStringSize]))!}

        if(secondStringSize >= 0 ) {sum += Int(String(SecondStringarr[secondStringSize]))!}

        result.append("\(sum%2)")
        carry = sum/2

        firstStringSize -= 1
        secondStringSize -= 1

    }

    if(carry != 0){
        result.append("\(carry)")
    }

    return result.reversed() + ""
 }

