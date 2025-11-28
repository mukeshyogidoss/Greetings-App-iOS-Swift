func addSums (numbers : Int...)->Int{
    var sum = 0 ;
    for i in numbers{
        sum+=i
    }
    
    return sum
}

print(addSums(numbers: 10,20,30,40))
