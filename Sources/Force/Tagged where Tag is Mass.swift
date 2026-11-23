public import Quantity

extension Tagged::Tagged where Tag == Mass, Underlying: Numeric {
    /// The force that gives this mass the acceleration `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Acceleration.Value<Underlying>) -> Force.Value<Underlying> {
        Force.amount(lhs.underlying * rhs.underlying)
    }
}
