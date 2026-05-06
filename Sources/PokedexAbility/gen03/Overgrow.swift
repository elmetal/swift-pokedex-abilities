//
//  Overgrow.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しんりょく in Japanese.
    ///
    /// The localized name of this ability is `"Overgrow"` in English and
    /// `"しんりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Overgrow by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.overgrow
    /// ```
    ///
    /// The ability's raw value is `"overgrow"`.
    static let overgrow = Overgrow.ability
}

enum Overgrow: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "overgrow")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しんりょく"
        default:
            "Overgrow"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "HPが1/3以下の時、くさタイプの攻撃技の威力が1.5倍になる。"
        case (.iii, _):
            "When HP is 1/3 or less, Grass-type attack moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
