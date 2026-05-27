//
//  Stench.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as あくしゅう in Japanese.
    ///
    /// The localized name of this ability is `"Stench"` in English and
    /// `"あくしゅう"` in Japanese.
    ///
    /// Use this value when you need to refer to Stench by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stench
    /// ```
    ///
    /// The ability's raw value is `"stench"`.
    static let stench = Stench.ability
}

enum Stench: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stench")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あくしゅう"
        default:
            "Stench"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "手持ちの先頭にいると、野生ポケモンと出会いにくくなる。"
        case (.iii ... .ix, _):
            "When the Pokémon leads the party, wild Pokémon are less likely to appear."
        default:
            name(locale: locale)
        }
    }
}
