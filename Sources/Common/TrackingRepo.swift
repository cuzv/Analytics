import Foundation

public protocol TrackingRepoType {
  func register(trackingProvider: TrackingProvider)
  func trackScreenviews(_ event: TrackingEventType)
  func trackEvent(_ event: TrackingEventType)
  func trackAction(_ event: TrackingEventType)
}

public final class TrackingRepo: TrackingRepoType {
  public static let shared: TrackingRepo = .init()

  private var providers = [TrackingProvider]()

  private init() { }

  public func register(trackingProvider: TrackingProvider) {
    providers.append(trackingProvider)
  }

  public func trackScreenviews(_ event: TrackingEventType) {
    providers.forEach { $0.trackScreenviews(event) }
  }

  public func trackEvent(_ event: TrackingEventType) {
    providers.forEach { $0.trackEvent(event) }
  }

  public func trackAction(_ event: TrackingEventType) {
    providers.forEach { $0.trackAction(event) }
  }
}
