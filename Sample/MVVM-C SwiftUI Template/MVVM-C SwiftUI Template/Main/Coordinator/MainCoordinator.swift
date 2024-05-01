import SwiftUI

final class MainCoordinator: MainCoordinatorProtocol {
  // MARK: - Properties
  var path: PathControlProtocol
  var isRoot: Bool {
    path.isRoot()
  }
  
  // MARK: - Init
  init(path: PathControlProtocol?) {
    self.path = PathControl()
    setupPath(path)
  }
  
  // MARK: - Methods
  func goToSecond() {
    push(flow: MainFlow.second.getFlow())
  }
  
  // MARK: - Flow Control Helper
  private func push(flow: AnyFlow) {
    path.append(flow)
  }
  
  private func setupPath(_ initPath: PathControlProtocol?) {
    defer {
      path.setRootCoordinator(objectWillChange: self.objectWillChange)
    }
    guard let initPath else { return }
    path = initPath
  }
  
}

protocol MainCoordinatorProtocol: BaseCoordinatorProtocol {
  func goToSecond()
}

protocol BaseCoordinatorProtocol: ObservableObject {
  var path: PathControlProtocol { get set }
  var isRoot: Bool { get }
}
