//1. Есть словарь с видами чая и их стоимостью. Есть очередь людей,
//   которые хотят заказать чай (можно представить её в виде массива
//   видов чая, которые хотят заказать).
//   Необходимо последовательно выводить в консоль сколько заплатит
//   покупатель (необходимо вывести его номер по порядку, чай, который
//   он заказал, и стоимость).
print("Task 1 -=-=-=-=-=-=-=-=-=-=-=-=-")
enum Tea: String {
    case green = "Greeen tea"
    case black = "Black tea"
    case earlgray = "EarlGray"
    case fruit = "Fruit tea"
    }

func getCost (tea: Tea) -> Double {
    switch tea {
    case .green: return 90.0
    case .black: return 70.0
    case .earlgray: return 80.0
    case .fruit: return 100.0
    }
}
var bayedTea = [Tea.black,Tea.fruit,Tea.earlgray,Tea.black,Tea.green,Tea.fruit]

for (id, bayTea) in bayedTea.enumerated() {
    print("№",id + 1,bayTea.rawValue, "\t- ", getCost(tea: bayTea))
}

//2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil].
//   Необходимо создать новый массив, который будет состоять из элементов старого,
//   но не должно быть nil, не должно быть 0 и 4, а также массив должен быть
//   отсортирован по возрастанию.
print("\nTask 2 -=-=-=-=-=-=-=-=-=-=-=-=-")
var arrayIn = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var arrayOut = arrayIn.compactMap{$0}
                      .filter{ $0 != 0 && $0 != 4 }
                      .sorted(by: < )
print(arrayIn)
print(arrayOut)

//3. Написать функцию, которая на вход принимает целое число, а возвращает массив,
//   который сформирован по следующим правилам: количество элементов соответствует
//   переданному числу, массив начинается с 1, каждый последующий элемент больше
//   предыдущего в 2 раза.
print("\nTask 3 -=-=-=-=-=-=-=-=-=-=-=-=-")

//func createArray(number: Int ) -> [Int]{
//    var array: [Int] =
//}
func myfunc (a: Int) -> [Int]{
    var array: [Int] = [1]
    for _ in 1...(a-1){
        array.append((array.last!)*2)
    }
    return array
}
print(myfunc(a: 10))
