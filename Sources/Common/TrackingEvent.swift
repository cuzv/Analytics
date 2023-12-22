import Foundation

// Can send any event name with any parameters
public struct TrackingEvent: TrackingEventType {
  public let name: String
  public let parameters: [String: Any]
}
