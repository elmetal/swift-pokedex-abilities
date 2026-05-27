//
//  ToughClaws.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かたいツメ in Japanese.
    ///
    /// The localized name of this ability is `"Tough Claws"` in English and
    /// `"かたいツメ"` in Japanese.
    ///
    /// Use this value when you need to refer to Tough Claws by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.toughClaws
    /// ```
    ///
    /// The ability's raw value is `"tough-claws"`.
    static let toughClaws = ToughClaws.ability
}

enum ToughClaws: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tough-claws")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かたいツメ"
        default:
            "Tough Claws"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "直接攻撃の技の威力が1.3倍になる。"
        case (.vi ... .ix, _):
            "Contact moves have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
