import Combine
import SwiftUI

final class PathControl: PathControlProtocol {
  
  private var path: NavigationPath = .init() {
    willSet {
      rootObjectWillChange?.send()
    }
  }
  
  private(set) lazy var _path: Binding<NavigationPath> = { [weak self] in
    Binding {
      self?.path ?? .init()
    } set: { newValue in
      self?.path = newValue
    }
  }()
  
  let id: UUID = .init()
  
  private weak var rootObjectWillChange: ObservableObjectPublisher?
  
  func popLast() {
    path.removeLast()
  }
  
  func append<Value: Hashable>(_ value: Value) {
    path.append(value)
  }
  
  func isRoot() -> Bool {
    return path.isEmpty
  }
  
  func setRootCoordinator(objectWillChange: ObservableObjectPublisher) {
    rootObjectWillChange = objectWillChange
  }
}

protocol PathControlProtocol {
  var id: UUID { get }
  var _path: Binding<NavigationPath> { get }
  
  func setRootCoordinator(objectWillChange: ObservableObjectPublisher)
  func popLast()
  func append<Value: Hashable>(_ value: Value)
  func isRoot() -> Bool
}
