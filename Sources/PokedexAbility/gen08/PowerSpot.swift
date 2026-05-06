//
//  PowerSpot.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as パワースポット in Japanese.
    ///
    /// The localized name of this ability is `"Power Spot"` in English and
    /// `"パワースポット"` in Japanese.
    ///
    /// Use this value when you need to refer to Power Spot by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.powerSpot
    /// ```
    ///
    /// The ability's raw value is `"power-spot"`.
    static let powerSpot = PowerSpot.ability
}

enum PowerSpot: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "power-spot")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "パワースポット"
        default:
            "Power Spot"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "味方の技の威力が1.3倍になる。"
        case (.viii, _):
            "Allies' moves have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
