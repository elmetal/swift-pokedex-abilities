//
//  Overgrow.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//

import Foundation

public extension PokemonAbility {
    static let overgrow = Overgrow.ability
}

enum Overgrow: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "overgrow")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しんりょく"
        default:
            "Overgrow"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "HPが1/3以下の時、くさタイプの攻撃技の威力が1.5倍になる。"
        case (.iii, _):
            "Powers up Grass-type moves when HP is low."
        default:
            name(locale: locale)
        }
    }
}
