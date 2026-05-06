//
//  MindsEye.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しんがん in Japanese.
    ///
    /// The localized name of this ability is `"Mind's Eye"` in English and
    /// `"しんがん"` in Japanese.
    ///
    /// Use this value when you need to refer to Mind's Eye by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.mindsEye
    /// ```
    ///
    /// The ability's raw value is `"minds-eye"`.
    static let mindsEye = MindsEye.ability
}

enum MindsEye: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "minds-eye")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しんがん"
        default:
            "Mind's Eye"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ノーマル・かくとうタイプの技がゴーストタイプに当たり、命中率を下げられない。"
        case (.ix, _):
            "Normal- and Fighting-type moves can hit Ghost-type Pokémon, and the Pokémon cannot have its accuracy lowered."
        default:
            name(locale: locale)
        }
    }
}
