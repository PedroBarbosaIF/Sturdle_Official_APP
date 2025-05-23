import Foundation
import SwiftData
import SwiftUI

func formattedDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy" // Formato desejado
    return dateFormatter.string(from: date)
}

func progressBarNumber (tasks: [Task], routine: Routine) -> CGFloat {
    let totalTasks: Int = tasks.filter { $0.routine.id == routine.id }.count
    let doneTasks: Int = tasks.filter { $0.routine.id == routine.id }.filter { $0.isDone }.count
    
    if totalTasks == 0 {
        return 0
    }
    
    let number = CGFloat((353 * doneTasks) / totalTasks)

    return number
}

//static func (size: CGFloat, weight: Font.Weight, design: Font.Design) -> Font {
//    return
//}
