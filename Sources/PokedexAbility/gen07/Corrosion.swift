//
//  Corrosion.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふしょく in Japanese.
    ///
    /// The localized name of this ability is `"Corrosion"` in English and
    /// `"ふしょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Corrosion by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.corrosion
    /// ```
    ///
    /// The ability's raw value is `"corrosion"`.
    static let corrosion = Corrosion.ability
}

enum Corrosion: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "corrosion")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふしょく"
        default:
            "Corrosion"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "はがね・どくタイプのポケモンもどく状態にできる。"
        case (.vii ... .ix, _):
            "The Pokémon can poison Steel- and Poison-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
