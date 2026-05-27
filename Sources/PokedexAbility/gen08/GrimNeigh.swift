//
//  GrimNeigh.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as くろのいななき in Japanese.
    ///
    /// The localized name of this ability is `"Grim Neigh"` in English and
    /// `"くろのいななき"` in Japanese.
    ///
    /// Use this value when you need to refer to Grim Neigh by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.grimNeigh
    /// ```
    ///
    /// The ability's raw value is `"grim-neigh"`.
    static let grimNeigh = GrimNeigh.ability
}

enum GrimNeigh: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "grim-neigh")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くろのいななき"
        default:
            "Grim Neigh"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "相手を倒した時、とくこうが1段階上がる。"
        case (.viii ... .ix, _):
            "When the Pokémon knocks out another Pokémon, Special Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
