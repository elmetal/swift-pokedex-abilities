//
//  IronFist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as てつのこぶし in Japanese.
    ///
    /// The localized name of this ability is `"Iron Fist"` in English and
    /// `"てつのこぶし"` in Japanese.
    ///
    /// Use this value when you need to refer to Iron Fist by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.ironFist
    /// ```
    ///
    /// The ability's raw value is `"iron-fist"`.
    static let ironFist = IronFist.ability
}

enum IronFist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "iron-fist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てつのこぶし"
        default:
            "Iron Fist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "パンチ系の技の威力が1.2倍になる。"
        case (.iv ... .ix, _):
            "Punching moves have 1.2x power."
        default:
            name(locale: locale)
        }
    }
}
