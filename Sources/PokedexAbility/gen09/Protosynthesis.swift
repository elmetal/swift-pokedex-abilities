//
//  Protosynthesis.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let protosynthesis = Protosynthesis.ability
}

enum Protosynthesis: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "protosynthesis")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こだいかっせい"
        default:
            "Protosynthesis"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "晴れの時やブーストエナジーを持っている時、最も高い能力が上がる。"
        case (.ix, _):
            "During harsh sunlight or when holding Booster Energy, the Pokémon's highest stat is boosted."
        default:
            name(locale: locale)
        }
    }
}
