////
////  InhaMealWidget.swift
////  InhaMealWidget
////
////  Created by changgyo seo on 2023/07/05.
////
//
//import WidgetKit
//import SwiftUI
//
//struct Provider: TimelineProvider {
//    func placeholder(in context: Context) -> SimpleEntry {
//        SimpleEntry(date: Date())
//    }
//    
//    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
//        let entry = SimpleEntry(date: Date())
//        completion(entry)
//    }
//    
//    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
//        var entries: [SimpleEntry] = []
//        
//        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
//        let currentDate = Date()
//        for hourOffset in 0 ..< 5 {
//            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
//            let entry = SimpleEntry(date: entryDate)
//            entries.append(entry)
//        }
//        
//        let timeline = Timeline(entries: entries, policy: .atEnd)
//        completion(timeline)
//    }
//}
//
//
//
//struct SimpleEntry: TimelineEntry {
//    let date: Date
//}
//
//struct InhaMealWidgetEntryView: View {
//    var entry: Provider.Entry
//    var mainRestaurantUseCase: MainRestaurantUseCase
//    
//    @State var meal: Meal = Meal.dummy
//    
//    var body: some View {
//        
//    }
//}
//
//struct InhaMealWidget: Widget {
//    let kind: String = "InhaMealWidget"
//    
//    var body: some WidgetConfiguration {
//        StaticConfiguration(kind: kind,
//                            provider: Provider()) { entry in
////            InhaMealWidgetEntryView(entry: entry,
////                                    mainRestaurantUseCase: MainRestaurantUseCaseImplementation())
//        }
//        .configurationDisplayName("InhaMeal")
//        .description("위젯으로 학식을 확인하세요")
//        .supportedFamilies([.systemSmall])
//    }
//}
