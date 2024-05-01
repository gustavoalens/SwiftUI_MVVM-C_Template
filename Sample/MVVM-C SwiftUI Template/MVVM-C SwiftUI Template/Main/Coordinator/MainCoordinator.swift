import SwiftUI

final class MainCoordinator: MainCoordinatorProtocol {
  // MARK: - Properties
  @Published var path: NavigationPath
  
  // MARK: - Init
  init(path: NavigationPath) {
    self.path = path
  }
  
  // MARK: - Methods
  func goToSecond() {
    push(flow: MainFlow.second)
  }
  
  // MARK: - Flow Control Helper
  private func push(flow: MainFlow) {
    path.append(flow)
  }
}

protocol MainCoordinatorProtocol: ObservableObject {
  var path: NavigationPath { get set }
  
  func goToSecond()
}
