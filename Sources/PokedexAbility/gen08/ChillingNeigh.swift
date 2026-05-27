//
//  ChillingNeigh.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しろのいななき in Japanese.
    ///
    /// The localized name of this ability is `"Chilling Neigh"` in English and
    /// `"しろのいななき"` in Japanese.
    ///
    /// Use this value when you need to refer to Chilling Neigh by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.chillingNeigh
    /// ```
    ///
    /// The ability's raw value is `"chilling-neigh"`.
    static let chillingNeigh = ChillingNeigh.ability
}

enum ChillingNeigh: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "chilling-neigh")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しろのいななき"
        default:
            "Chilling Neigh"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "相手を倒した時、こうげきが1段階上がる。"
        case (.viii ... .ix, _):
            "When the Pokémon knocks out another Pokémon, Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
