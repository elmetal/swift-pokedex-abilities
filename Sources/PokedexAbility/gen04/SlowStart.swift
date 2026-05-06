//
//  SlowStart.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let slowStart = SlowStart.ability
}

enum SlowStart: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "slow-start")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スロースタート"
        default:
            "Slow Start"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場してから5ターンの間、こうげきとすばやさが半分になる。"
        case (.iv, _):
            "For five turns after entering battle, Attack and Speed are halved."
        default:
            name(locale: locale)
        }
    }
}
