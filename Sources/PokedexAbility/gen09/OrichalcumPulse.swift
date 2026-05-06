//
//  OrichalcumPulse.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let orichalcumPulse = OrichalcumPulse.ability
}

enum OrichalcumPulse: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "orichalcum-pulse")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひひいろのこどう"
        default:
            "Orichalcum Pulse"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、天気を晴れにし、晴れの時こうげきが上がる。"
        case (.ix, _):
            "When the Pokémon enters battle, it creates harsh sunlight, and its Attack is boosted during harsh sunlight."
        default:
            name(locale: locale)
        }
    }
}
