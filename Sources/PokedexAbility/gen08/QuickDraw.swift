//
//  QuickDraw.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as クイックドロウ in Japanese.
    ///
    /// The localized name of this ability is `"Quick Draw"` in English and
    /// `"クイックドロウ"` in Japanese.
    ///
    /// Use this value when you need to refer to Quick Draw by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.quickDraw
    /// ```
    ///
    /// The ability's raw value is `"quick-draw"`.
    static let quickDraw = QuickDraw.ability
}

enum QuickDraw: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "quick-draw")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "クイックドロウ"
        default:
            "Quick Draw"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "同じ優先度の中で先に行動することがある。"
        case (.viii, _):
            "The Pokémon sometimes moves first within its priority bracket."
        default:
            name(locale: locale)
        }
    }
}
