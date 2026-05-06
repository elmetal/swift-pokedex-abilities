//
//  Commander.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しれいとう in Japanese.
    ///
    /// The localized name of this ability is `"Commander"` in English and
    /// `"しれいとう"` in Japanese.
    ///
    /// Use this value when you need to refer to Commander by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.commander
    /// ```
    ///
    /// The ability's raw value is `"commander"`.
    static let commander = Commander.ability
}

enum Commander: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "commander")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しれいとう"
        default:
            "Commander"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ダブルバトルで味方のヘイラッシャの口に入り、ヘイラッシャの能力を上げる。"
        case (.ix, _):
            "In Double Battles, Tatsugiri enters an allied Dondozo's mouth and raises Dondozo's stats."
        default:
            name(locale: locale)
        }
    }
}
