//
//  HadronEngine.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hadronEngine = HadronEngine.ability
}

enum HadronEngine: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hadron-engine")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ハドロンエンジン"
        default:
            "Hadron Engine"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、場をエレキフィールドにし、エレキフィールドの時とくこうが上がる。"
        case (.ix, _):
            "When the Pokémon enters battle, it creates Electric Terrain, and its Special Attack is boosted during Electric Terrain."
        default:
            name(locale: locale)
        }
    }
}
