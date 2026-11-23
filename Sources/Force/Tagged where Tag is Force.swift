public import Quantity

extension Tagged::Tagged where Tag == Force, Underlying: FloatingPoint {
    /// The acceleration this force gives the mass `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Mass.Value<Underlying>) -> Acceleration.Value<Underlying> {
        Acceleration.amount(lhs.underlying / rhs.underlying)
    }
}

extension Tagged::Tagged where Tag == Force, Underlying: FloatingPoint {
    /// The mass this force gives the acceleration `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Acceleration.Value<Underlying>) -> Mass.Value<Underlying> {
        Mass.amount(lhs.underlying / rhs.underlying)
    }
}
