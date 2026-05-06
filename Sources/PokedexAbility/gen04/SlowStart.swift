//
//  SlowStart.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as スロースタート in Japanese.
    ///
    /// The localized name of this ability is `"Slow Start"` in English and
    /// `"スロースタート"` in Japanese.
    ///
    /// Use this value when you need to refer to Slow Start by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.slowStart
    /// ```
    ///
    /// The ability's raw value is `"slow-start"`.
    static let slowStart = SlowStart.ability
}

enum SlowStart: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "slow-start")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スロースタート"
        default:
            "Slow Start"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場してから5ターンの間、こうげきとすばやさが半分になる。"
        case (.iv, _):
            "For five turns after entering battle, Attack and Speed are halved."
        default:
            name(locale: locale)
        }
    }
}
