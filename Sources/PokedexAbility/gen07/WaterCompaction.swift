//
//  WaterCompaction.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let waterCompaction = WaterCompaction.ability
}

enum WaterCompaction: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-compaction")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "みずがため"
        default:
            "Water Compaction"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "みずタイプの技を受けると、ぼうぎょが2段階上がる。"
        case (.vii, _):
            "When hit by a Water-type move, Defense rises by two stages."
        default:
            name(locale: locale)
        }
    }
}
