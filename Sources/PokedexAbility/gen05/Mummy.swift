//
//  Mummy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ミイラ in Japanese.
    ///
    /// The localized name of this ability is `"Mummy"` in English and
    /// `"ミイラ"` in Japanese.
    ///
    /// Use this value when you need to refer to Mummy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.mummy
    /// ```
    ///
    /// The ability's raw value is `"mummy"`.
    static let mummy = Mummy.ability
}

enum Mummy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mummy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミイラ"
        default:
            "Mummy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "直接攻撃を受けた時、相手の特性をミイラにする。"
        case (.v ... .ix, _):
            "Contact with the Pokémon changes the attacker's Ability to Mummy."
        default:
            name(locale: locale)
        }
    }
}
