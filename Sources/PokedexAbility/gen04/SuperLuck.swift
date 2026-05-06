//
//  SuperLuck.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let superLuck = SuperLuck.ability
}

enum SuperLuck: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "super-luck")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きょううん"
        default:
            "Super Luck"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "自分の技が急所に当たりやすくなる。"
        case (.iv, _):
            "The Pokémon's moves have one higher critical-hit stage."
        default:
            name(locale: locale)
        }
    }
}
