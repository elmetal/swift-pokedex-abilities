//
//  NeutralizingGas.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かがくへんかガス in Japanese.
    ///
    /// The localized name of this ability is `"Neutralizing Gas"` in English and
    /// `"かがくへんかガス"` in Japanese.
    ///
    /// Use this value when you need to refer to Neutralizing Gas by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.neutralizingGas
    /// ```
    ///
    /// The ability's raw value is `"neutralizing-gas"`.
    static let neutralizingGas = NeutralizingGas.ability
}

enum NeutralizingGas: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "neutralizing-gas")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かがくへんかガス"
        default:
            "Neutralizing Gas"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "場にいる間、他のポケモンの特性の効果を消す。"
        case (.viii, _):
            "While the Pokémon is in battle, other Pokémon's Abilities are suppressed."
        default:
            name(locale: locale)
        }
    }
}
