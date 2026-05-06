//
//  Moxie.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let moxie = Moxie.ability
}

enum Moxie: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "moxie")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じしんかじょう"
        default:
            "Moxie"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "相手を倒した時、こうげきが1段階上がる。"
        case (.v, _):
            "When the Pokémon knocks out another Pokémon, Attack rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
