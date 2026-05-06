//
//  Stench.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
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
        case (.iii, .japanese):
            "手持ちの先頭にいると、野生ポケモンと出会いにくくなる。"
        case (.iii, _):
            "When the Pokémon leads the party, wild Pokémon are less likely to appear."
        default:
            name(locale: locale)
        }
    }
}
