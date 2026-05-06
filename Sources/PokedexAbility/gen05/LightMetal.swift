//
//  LightMetal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let lightMetal = LightMetal.ability
}

enum LightMetal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "light-metal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ライトメタル"
        default:
            "Light Metal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分の重さが半分になる。"
        case (.v, _):
            "The Pokémon's weight is halved."
        default:
            name(locale: locale)
        }
    }
}
