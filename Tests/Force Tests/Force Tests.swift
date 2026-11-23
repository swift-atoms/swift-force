import Force
import Testing

enum `Force Tests` {}

extension `Force Tests` {
    @Suite struct `Force is a kind of quantity in newtons` {
        @Test func `Its dimension is length: 1, mass: 1, time: -2`() {
            #expect(Force.dimension == Quantity.Dimension(length: 1, mass: 1, time: -2))
        }

        @Test func `An amount given in newtons keeps its scalar`() {
            #expect(Force.newtons(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A force is a mass times an acceleration` {
        @Test func `Its dimension balances`() {
            #expect(Force.dimension == Mass.dimension * Acceleration.dimension)
        }

        @Test func `F = m a, in both orders, and back`() {
            let mass = Mass.kilograms(2.0)
            let acceleration = Acceleration.amount(3.0)
            #expect(mass * acceleration == Force.newtons(6.0))
            #expect(acceleration * mass == Force.newtons(6.0))
            #expect(Force.newtons(6.0) / mass == acceleration)
            #expect(Force.newtons(6.0) / acceleration == mass)
        }
    }
}
