//
//  Simple.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as たんじゅん in Japanese.
    ///
    /// The localized name of this ability is `"Simple"` in English and
    /// `"たんじゅん"` in Japanese.
    ///
    /// Use this value when you need to refer to Simple by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.simple
    /// ```
    ///
    /// The ability's raw value is `"simple"`.
    static let simple = Simple.ability
}

enum Simple: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "simple")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "たんじゅん"
        default:
            "Simple"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "能力ランクの変化量が2倍になる。"
        case (.iv, _):
            "Stat changes are doubled."
        default:
            name(locale: locale)
        }
    }
}
