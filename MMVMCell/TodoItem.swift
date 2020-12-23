////
////  TodoItem.swift
////  CellViews
////
////  Created by Jayakrishnan u on 12/21/20.
////
//
//import Foundation
//
//
////protocol TodoItemDidSelectDelegate {
////    func onItemSelected()
////}
//
//struct TodoItemProtocol {
//    var identity: String? { get }
//    var item: String? { get }
//}
//
//protocol TodoItemNewItem {
//    var newItem: String? { get }
//}
//
//protocol ToItemAddDelegate {
//    mutating func onTodoItemAdd() -> Void
//}
//
//struct TodoItemPresentableModel: TodoItemProtocol {
//    var identity: String?
//    var item: String?
//}
//
//class TodoItemViewModel: TodoItemNewItem {
//    var items: [TodoItemProtocol] = []
//    var newItem: String?
//    weak var newView: TodoView?
//    init(newView: TodoView) {
//        self.newView = newView
//        let item1 = TodoItemPresentableModel(identity: "1", item: "Learn TableView")
//        let item2 = TodoItemPresentableModel(identity: "2", item: "Learn View View Model")
//        let item3 = TodoItemPresentableModel(identity: "3", item: "Learn to handle data")
//        items.append(contentsOf: [item1, item2, item3])
//    }
//}
//
//
//extension TodoItemViewModel: ToItemAddDelegate {
//
//     func onTodoItemAdd() {
//        guard let newItem = newItem else { return }
//       print("New to do value in view model \(newItem)")
//        let itemIndex = items.count + 1
//        let newValue = TodoItemPresentableModel(identity: "\(itemIndex)", item: newItem)
//        items.append(newValue)
//        self.newView?.insertTodo()
//    }
//}
//
//
//extension TodoItemProtocol: TodoItemDidSelectDelegate {
//    func onItemSelected() {
//        print("The selected row id : \(identity)")
//    }
//    
//    
//}
