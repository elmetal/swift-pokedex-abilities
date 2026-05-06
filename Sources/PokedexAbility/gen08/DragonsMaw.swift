//
//  DragonsMaw.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let dragonsMaw = DragonsMaw.ability
}

enum DragonsMaw: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dragons-maw")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "りゅうのあぎと"
        default:
            "Dragon's Maw"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "ドラゴンタイプの技の威力が1.5倍になる。"
        case (.viii, _):
            "Dragon-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
