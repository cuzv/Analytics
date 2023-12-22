import Foundation

public protocol ActionTrackingEventType: TrackingEventType {
  var parameters: [String: Any] { get }
}
