//
//  Schooling.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぎょぐん in Japanese.
    ///
    /// The localized name of this ability is `"Schooling"` in English and
    /// `"ぎょぐん"` in Japanese.
    ///
    /// Use this value when you need to refer to Schooling by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.schooling
    /// ```
    ///
    /// The ability's raw value is `"schooling"`.
    static let schooling = Schooling.ability
}

enum Schooling: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "schooling")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぎょぐん"
        default:
            "Schooling"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "ヨワシのレベルと残りHPに応じて姿が変わる。"
        case (.vii ... .ix, _):
            "Wishiwashi changes form depending on its level and remaining HP."
        default:
            name(locale: locale)
        }
    }
}
