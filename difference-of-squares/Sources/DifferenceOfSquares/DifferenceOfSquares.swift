class Squares {
  private let base: Int
  
  init(_ base: Int) {
    self.base = base
  }
  
  var squareOfSum: Int {
    let sum = base * (base + 1) / 2
    return sum * sum
  }
  
  var sumOfSquares: Int {
    base * (base + 1) * (2 * base + 1) / 6
  }
  
  var differenceOfSquares: Int {
    squareOfSum - sumOfSquares
  }
}
