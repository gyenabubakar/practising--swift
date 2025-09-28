let WORKING_HOURS = 8
let WORKING_DAYS_IN_MONTH = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * Double(WORKING_HOURS)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let discountPercentage = discount / 100
    
    let rate = Double(WORKING_DAYS_IN_MONTH) * dailyRateFrom(hourlyRate: hourlyRate)
    let rateDiscounted = rate * discountPercentage
    let rateAfterDiscount = rate - rateDiscounted
    
    return rateAfterDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let daysCoveredByBudget = budget / dailyRate
    return daysCoveredByBudget.rounded()
}
