//
//  Illuminate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let illuminate = Illuminate.ability
}

enum Illuminate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "illuminate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はっこう"
        default:
            "Illuminate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "手持ちの先頭にいると、野生ポケモンと出会いやすくなる。"
        case (.iii, _):
            "When the Pokémon leads the party, wild Pokémon are more likely to appear."
        default:
            name(locale: locale)
        }
    }
}
