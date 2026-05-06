import Foundation
import Testing
@testable import PokedexAbility

@Test func includesAllGenerationIIIAbilityDefinitions() {
    #expect(PokemonAbilityDefinitions.all.count == 77)
}

@Test func formatsGenerationIIIAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.blaze.formatted(locale: locale) == "もうか")
    #expect(PokemonAbility.airLock.formatted(locale: locale) == "エアロック")
    #expect(PokemonAbility.cacophony.formatted(locale: locale) == "そうおん")
}

@Test func parsesGenerationIIIAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("もうか") == .blaze)
    #expect(try strategy.parse("エアロック") == .airLock)
    #expect(try strategy.parse("air-lock") == .airLock)
}
