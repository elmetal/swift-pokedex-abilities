//
//  EarlyBird.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はやおき in Japanese.
    ///
    /// The localized name of this ability is `"Early Bird"` in English and
    /// `"はやおき"` in Japanese.
    ///
    /// Use this value when you need to refer to Early Bird by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.earlyBird
    /// ```
    ///
    /// The ability's raw value is `"early-bird"`.
    static let earlyBird = EarlyBird.ability
}

enum EarlyBird: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "early-bird")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやおき"
        default:
            "Early Bird"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "ねむり状態から通常の半分のターンで目覚める。"
        case (.iii ... .ix, _):
            "Sleep turns pass twice as quickly."
        default:
            name(locale: locale)
        }
    }
}
