import Foundation

@main
public struct DateFormatting {

    public static func main() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let date = formatter.date(from: "01/01/2022")

        print(DateFormatting().formatDate(date: date!))
    }

    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let dateToString = formatter.string(from: date)
        return dateToString
    }

    func dateFromString(dateString: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let stringToDate = formatter.date(from: dateString)
        return stringToDate
    }
}
