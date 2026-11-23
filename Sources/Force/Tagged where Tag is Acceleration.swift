public import Quantity

extension Tagged::Tagged where Tag == Acceleration, Underlying: Numeric {
    /// The force that gives the mass `rhs` this acceleration.
    @inlinable
    public static func * (lhs: Self, rhs: Mass.Value<Underlying>) -> Force.Value<Underlying> {
        Force.amount(lhs.underlying * rhs.underlying)
    }
}
