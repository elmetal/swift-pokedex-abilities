//
//  CottonDown.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as わたげ in Japanese.
    ///
    /// The localized name of this ability is `"Cotton Down"` in English and
    /// `"わたげ"` in Japanese.
    ///
    /// Use this value when you need to refer to Cotton Down by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.cottonDown
    /// ```
    ///
    /// The ability's raw value is `"cotton-down"`.
    static let cottonDown = CottonDown.ability
}

enum CottonDown: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cotton-down")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わたげ"
        default:
            "Cotton Down"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "攻撃を受けると、自分以外のポケモンのすばやさを1段階下げる。"
        case (.viii ... .ix, _):
            "When hit by an attack, the Speed of all other Pokémon falls by one stage."
        default:
            name(locale: locale)
        }
    }
}
