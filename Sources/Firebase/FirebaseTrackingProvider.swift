import Foundation

public struct FirebaseTrackingProvider: TrackingProvider {
  public func trackScreenviews(_ event: TrackingEventType) {
    guard let event = event as? ScreenviewsTrackingEvent else {
      return
    }
  }

  public func trackEvent(_ event: TrackingEventType) {
    guard let event = event as? TrackingEvent else {
      return
    }
  }

  public func trackAction(_ event: TrackingEventType) {
    guard let event = event as? FirebaseActionTrackingEvent else {
      return
    }
  }
}
