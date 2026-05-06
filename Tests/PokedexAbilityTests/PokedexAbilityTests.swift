import Foundation
import Testing
@testable import PokedexAbility

@Test func includesGenerationIIIThroughIXAndChampionsAbilityDefinitions() {
    #expect(PokemonAbilityDefinitions.all.count == 310)
}

@Test func formatsGenerationIIIAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.blaze.formatted(locale: locale) == "もうか")
    #expect(PokemonAbility.airLock.formatted(locale: locale) == "エアロック")
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

@Test func formatsGenerationVIAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.aerilate.formatted(locale: locale) == "スカイスキン")
    #expect(PokemonAbility.protean.formatted(locale: locale) == "へんげんじざい")
    #expect(PokemonAbility.toughClaws.formatted(locale: locale) == "かたいツメ")
}

@Test func parsesGenerationVIAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("スカイスキン") == .aerilate)
    #expect(try strategy.parse("へんげんじざい") == .protean)
    #expect(try strategy.parse("tough-claws") == .toughClaws)
}

@Test func formatsGenerationVIIAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.battery.formatted(locale: locale) == "バッテリー")
    #expect(PokemonAbility.beastBoost.formatted(locale: locale) == "ビーストブースト")
    #expect(PokemonAbility.waterBubble.formatted(locale: locale) == "すいほう")
}

@Test func parsesGenerationVIIAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("バッテリー") == .battery)
    #expect(try strategy.parse("ビーストブースト") == .beastBoost)
    #expect(try strategy.parse("water-bubble") == .waterBubble)
}

@Test func formatsGenerationVIIIAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.asOne.formatted(locale: locale) == "じんばいったい")
    #expect(PokemonAbility.intrepidSword.formatted(locale: locale) == "ふとうのけん")
    #expect(PokemonAbility.wanderingSpirit.formatted(locale: locale) == "さまようたましい")
}

@Test func parsesGenerationVIIIAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("じんばいったい") == .asOne)
    #expect(try strategy.parse("ふとうのけん") == .intrepidSword)
    #expect(try strategy.parse("wandering-spirit") == .wanderingSpirit)
}

@Test func formatsGenerationIXAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.angerShell.formatted(locale: locale) == "いかりのこうら")
    #expect(PokemonAbility.goodAsGold.formatted(locale: locale) == "おうごんのからだ")
    #expect(PokemonAbility.zeroToHero.formatted(locale: locale) == "マイティチェンジ")
}

@Test func parsesGenerationIXAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("いかりのこうら") == .angerShell)
    #expect(try strategy.parse("おうごんのからだ") == .goodAsGold)
    #expect(try strategy.parse("zero-to-hero") == .zeroToHero)
}

@Test func formatsChampionsAbilityNames() {
    let locale = Locale(identifier: "ja_JP")

    #expect(PokemonAbility.dragonize.formatted(locale: locale) == "ドラゴンスキン")
    #expect(PokemonAbility.megaSol.formatted(locale: locale) == "メガソーラー")
    #expect(PokemonAbility.spicySpray.formatted(locale: locale) == "とびだすハバネロ")
}

@Test func parsesChampionsAbilityNames() throws {
    let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

    #expect(try strategy.parse("ドラゴンスキン") == .dragonize)
    #expect(try strategy.parse("メガソーラー") == .megaSol)
    #expect(try strategy.parse("spicy-spray") == .spicySpray)
}
