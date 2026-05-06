//
//  NoGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let noGuard = NoGuard.ability
}

enum NoGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "no-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ノーガード"
        default:
            "No Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "自分と相手の使う技が必ず命中する。"
        case (.iv, _):
            "All moves used by or against the Pokémon hit."
        default:
            name(locale: locale)
        }
    }
}
