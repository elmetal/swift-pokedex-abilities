//
//  FurCoat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ファーコート in Japanese.
    ///
    /// The localized name of this ability is `"Fur Coat"` in English and
    /// `"ファーコート"` in Japanese.
    ///
    /// Use this value when you need to refer to Fur Coat by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.furCoat
    /// ```
    ///
    /// The ability's raw value is `"fur-coat"`.
    static let furCoat = FurCoat.ability
}

enum FurCoat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fur-coat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ファーコート"
        default:
            "Fur Coat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "物理技で受けるダメージが半分になる。"
        case (.vi, _):
            "Damage from physical moves is halved."
        default:
            name(locale: locale)
        }
    }
}
