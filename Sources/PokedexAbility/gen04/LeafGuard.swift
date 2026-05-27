//
//  LeafGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as リーフガード in Japanese.
    ///
    /// The localized name of this ability is `"Leaf Guard"` in English and
    /// `"リーフガード"` in Japanese.
    ///
    /// Use this value when you need to refer to Leaf Guard by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.leafGuard
    /// ```
    ///
    /// The ability's raw value is `"leaf-guard"`.
    static let leafGuard = LeafGuard.ability
}

enum LeafGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "leaf-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リーフガード"
        default:
            "Leaf Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "晴れの時、状態異常にならない。"
        case (.iv ... .ix, _):
            "During harsh sunlight, the Pokémon cannot be affected by status conditions."
        default:
            name(locale: locale)
        }
    }
}
