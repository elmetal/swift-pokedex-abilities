//
//  Magician.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マジシャン in Japanese.
    ///
    /// The localized name of this ability is `"Magician"` in English and
    /// `"マジシャン"` in Japanese.
    ///
    /// Use this value when you need to refer to Magician by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.magician
    /// ```
    ///
    /// The ability's raw value is `"magician"`.
    static let magician = Magician.ability
}

enum Magician: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magician")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マジシャン"
        default:
            "Magician"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "技を当てた時、相手の持ち物を奪う。"
        case (.vi ... .ix, _):
            "When the Pokémon hits a target with a move, it steals the target's held item."
        default:
            name(locale: locale)
        }
    }
}
