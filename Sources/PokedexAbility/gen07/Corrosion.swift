//
//  Corrosion.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
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
        case (.vii, .japanese):
            "はがね・どくタイプのポケモンもどく状態にできる。"
        case (.vii, _):
            "The Pokémon can poison Steel- and Poison-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
