//
//  Commander.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let commander = Commander.ability
}

enum Commander: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "commander")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しれいとう"
        default:
            "Commander"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ダブルバトルで味方のヘイラッシャの口に入り、ヘイラッシャの能力を上げる。"
        case (.ix, _):
            "In Double Battles, Tatsugiri enters an allied Dondozo's mouth and raises Dondozo's stats."
        default:
            name(locale: locale)
        }
    }
}
