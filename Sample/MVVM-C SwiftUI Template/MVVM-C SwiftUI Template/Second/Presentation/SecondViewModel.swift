import SwiftUI

final class SecondViewModel: SecondViewModelProtocol {
  // MARK: - Properties
  private let coordinator: any SecondCoordinatorProtocol
  
  @Published var viewData: SecondViewData = .init(popTitle: "Pop Screen here too")
  
  init(coordinator: any SecondCoordinatorProtocol) {
    self.coordinator = coordinator
  }
  
  func pop() {
    coordinator.pop()
  }
}

protocol SecondViewModelProtocol: ObservableObject {
  var viewData: SecondViewData { get }
  
  func pop()
}
