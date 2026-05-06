import Foundation
import Testing
@testable import PokedexAbility

@Test func includesGenerationIIIThroughVAbilityDefinitions() {
    #expect(PokemonAbilityDefinitions.all.count == 165)
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

@Test func formatsGenerationIVAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.adaptability.formatted(locale: locale) == "てきおうりょく")
    #expect(PokemonAbility.magicGuard.formatted(locale: locale) == "マジックガード")
    #expect(PokemonAbility.unburden.formatted(locale: locale) == "かるわざ")
}

@Test func parsesGenerationIVAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("てきおうりょく") == .adaptability)
    #expect(try strategy.parse("マジックガード") == .magicGuard)
    #expect(try strategy.parse("unburden") == .unburden)
}

@Test func formatsGenerationVAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.analytic.formatted(locale: locale) == "アナライズ")
    #expect(PokemonAbility.magicBounce.formatted(locale: locale) == "マジックミラー")
    #expect(PokemonAbility.zenMode.formatted(locale: locale) == "ダルマモード")
}

@Test func parsesGenerationVAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("アナライズ") == .analytic)
    #expect(try strategy.parse("マジックミラー") == .magicBounce)
    #expect(try strategy.parse("zen-mode") == .zenMode)
}
