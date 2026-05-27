//
//  QuickFeet.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はやあし in Japanese.
    ///
    /// The localized name of this ability is `"Quick Feet"` in English and
    /// `"はやあし"` in Japanese.
    ///
    /// Use this value when you need to refer to Quick Feet by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.quickFeet
    /// ```
    ///
    /// The ability's raw value is `"quick-feet"`.
    static let quickFeet = QuickFeet.ability
}

enum QuickFeet: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "quick-feet")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやあし"
        default:
            "Quick Feet"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "状態異常の時、すばやさが1.5倍になる。"
        case (.iv ... .ix, _):
            "When affected by a status condition, Speed is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
