//
//  Aerilate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let aerilate = Aerilate.ability
}

enum Aerilate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aerilate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スカイスキン"
        default:
            "Aerilate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ノーマルタイプの技がひこうタイプになり、威力が1.3倍になる。"
        case (.vi, _):
            "Normal-type moves become Flying-type moves and have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
