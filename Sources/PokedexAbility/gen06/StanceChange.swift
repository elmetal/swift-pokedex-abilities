//
//  StanceChange.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let stanceChange = StanceChange.ability
}

enum StanceChange: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stance-change")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バトルスイッチ"
        default:
            "Stance Change"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ギルガルドが使う技に応じて姿を変える。"
        case (.vi, _):
            "Aegislash changes form depending on the moves it uses."
        default:
            name(locale: locale)
        }
    }
}
