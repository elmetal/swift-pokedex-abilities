//
//  CursedBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let cursedBody = CursedBody.ability
}

enum CursedBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cursed-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "のろわれボディ"
        default:
            "Cursed Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "攻撃を受けた時、30%の確率で相手のその技をかなしばり状態にする。"
        case (.v, _):
            "When hit by a move, there is a 30% chance to disable that move."
        default:
            name(locale: locale)
        }
    }
}
