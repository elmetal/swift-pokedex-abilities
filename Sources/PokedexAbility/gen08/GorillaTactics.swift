//
//  GorillaTactics.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let gorillaTactics = GorillaTactics.ability
}

enum GorillaTactics: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gorilla-tactics")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ごりむちゅう"
        default:
            "Gorilla Tactics"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "こうげきが1.5倍になるが、最初に選んだ技しか出せなくなる。"
        case (.viii, _):
            "Attack is 1.5x, but the Pokémon can use only the first move it selected."
        default:
            name(locale: locale)
        }
    }
}
