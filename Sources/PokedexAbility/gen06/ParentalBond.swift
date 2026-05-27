//
//  ParentalBond.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as おやこあい in Japanese.
    ///
    /// The localized name of this ability is `"Parental Bond"` in English and
    /// `"おやこあい"` in Japanese.
    ///
    /// Use this value when you need to refer to Parental Bond by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.parentalBond
    /// ```
    ///
    /// The ability's raw value is `"parental-bond"`.
    static let parentalBond = ParentalBond.ability
}

enum ParentalBond: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "parental-bond")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おやこあい"
        default:
            "Parental Bond"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "攻撃技が2回当たり、2回目のダメージは下がる。"
        case (.vi ... .ix, _):
            "The Pokémon's moves hit twice, with the second hit dealing reduced damage."
        default:
            name(locale: locale)
        }
    }
}
