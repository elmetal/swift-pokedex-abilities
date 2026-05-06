//
//  Galvanize.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let galvanize = Galvanize.ability
}

enum Galvanize: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "galvanize")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "エレキスキン"
        default:
            "Galvanize"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "ノーマルタイプの技がでんきタイプになり、威力が1.2倍になる。"
        case (.vii, _):
            "Normal-type moves become Electric-type moves and have 1.2x power."
        default:
            name(locale: locale)
        }
    }
}
