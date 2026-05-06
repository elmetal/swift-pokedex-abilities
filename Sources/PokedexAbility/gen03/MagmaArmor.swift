//
//  MagmaArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マグマのよろい in Japanese.
    ///
    /// The localized name of this ability is `"Magma Armor"` in English and
    /// `"マグマのよろい"` in Japanese.
    ///
    /// Use this value when you need to refer to Magma Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.magmaArmor
    /// ```
    ///
    /// The ability's raw value is `"magma-armor"`.
    static let magmaArmor = MagmaArmor.ability
}

enum MagmaArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magma-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マグマのよろい"
        default:
            "Magma Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こおり状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become frozen."
        default:
            name(locale: locale)
        }
    }
}
