//
//  OwnTempo.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マイペース in Japanese.
    ///
    /// The localized name of this ability is `"Own Tempo"` in English and
    /// `"マイペース"` in Japanese.
    ///
    /// Use this value when you need to refer to Own Tempo by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.ownTempo
    /// ```
    ///
    /// The ability's raw value is `"own-tempo"`.
    static let ownTempo = OwnTempo.ability
}

enum OwnTempo: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "own-tempo")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マイペース"
        default:
            "Own Tempo"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こんらん状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become confused."
        default:
            name(locale: locale)
        }
    }
}
