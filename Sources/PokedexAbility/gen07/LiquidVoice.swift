//
//  LiquidVoice.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let liquidVoice = LiquidVoice.ability
}

enum LiquidVoice: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "liquid-voice")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "うるおいボイス"
        default:
            "Liquid Voice"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "音に関係する技がみずタイプになる。"
        case (.vii, _):
            "The Pokémon's sound-based moves become Water-type moves."
        default:
            name(locale: locale)
        }
    }
}
