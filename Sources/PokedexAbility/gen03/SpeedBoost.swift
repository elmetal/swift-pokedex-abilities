//
//  SpeedBoost.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かそく in Japanese.
    ///
    /// The localized name of this ability is `"Speed Boost"` in English and
    /// `"かそく"` in Japanese.
    ///
    /// Use this value when you need to refer to Speed Boost by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.speedBoost
    /// ```
    ///
    /// The ability's raw value is `"speed-boost"`.
    static let speedBoost = SpeedBoost.ability
}

enum SpeedBoost: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "speed-boost")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かそく"
        default:
            "Speed Boost"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "毎ターン終了時、すばやさが1段階上がる。"
        case (.iii, _):
            "At the end of each turn, Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
