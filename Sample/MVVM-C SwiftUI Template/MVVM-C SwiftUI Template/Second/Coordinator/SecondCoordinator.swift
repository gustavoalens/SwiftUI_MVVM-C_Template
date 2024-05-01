import SwiftUI

final class SecondCoordinator: SecondCoordinatorProtocol {
  // MARK: - Properties
  @Published var path: NavigationPath
  
  // MARK: - Init
  init(path: NavigationPath) {
    self.path = path
  }
  
  // MARK: - Methods
  func pop() {
    path.removeLast()
  }
}

protocol SecondCoordinatorProtocol: ObservableObject {
  var path: NavigationPath { get set }
  
  func pop()
}
