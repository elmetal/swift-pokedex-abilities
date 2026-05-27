//
//  IronBarbs.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as てつのトゲ in Japanese.
    ///
    /// The localized name of this ability is `"Iron Barbs"` in English and
    /// `"てつのトゲ"` in Japanese.
    ///
    /// Use this value when you need to refer to Iron Barbs by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.ironBarbs
    /// ```
    ///
    /// The ability's raw value is `"iron-barbs"`.
    static let ironBarbs = IronBarbs.ability
}

enum IronBarbs: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "iron-barbs")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てつのトゲ"
        default:
            "Iron Barbs"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "直接攻撃を受けた時、相手に相手の最大HPの1/8のダメージを与える。"
        case (.v ... .ix, _):
            "Contact with the Pokémon damages the attacker by 1/8 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
