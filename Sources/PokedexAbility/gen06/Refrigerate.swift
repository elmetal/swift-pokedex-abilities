//
//  Refrigerate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フリーズスキン in Japanese.
    ///
    /// The localized name of this ability is `"Refrigerate"` in English and
    /// `"フリーズスキン"` in Japanese.
    ///
    /// Use this value when you need to refer to Refrigerate by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.refrigerate
    /// ```
    ///
    /// The ability's raw value is `"refrigerate"`.
    static let refrigerate = Refrigerate.ability
}

enum Refrigerate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "refrigerate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フリーズスキン"
        default:
            "Refrigerate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ノーマルタイプの技がこおりタイプになり、威力が1.3倍になる。"
        case (.vi, _):
            "Normal-type moves become Ice-type moves and have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
