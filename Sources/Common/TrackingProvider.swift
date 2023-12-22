import Foundation

public protocol TrackingProvider {
  func trackScreenviews(_ event: TrackingEventType)
  func trackEvent(_ event: TrackingEventType)
  func trackAction(_ event: TrackingEventType)
}
