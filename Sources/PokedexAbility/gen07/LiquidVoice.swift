//
//  LiquidVoice.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as うるおいボイス in Japanese.
    ///
    /// The localized name of this ability is `"Liquid Voice"` in English and
    /// `"うるおいボイス"` in Japanese.
    ///
    /// Use this value when you need to refer to Liquid Voice by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.liquidVoice
    /// ```
    ///
    /// The ability's raw value is `"liquid-voice"`.
    static let liquidVoice = LiquidVoice.ability
}

enum LiquidVoice: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "liquid-voice")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "うるおいボイス"
        default:
            "Liquid Voice"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "音に関係する技がみずタイプになる。"
        case (.vii, _):
            "The Pokémon's sound-based moves become Water-type moves."
        default:
            name(locale: locale)
        }
    }
}
