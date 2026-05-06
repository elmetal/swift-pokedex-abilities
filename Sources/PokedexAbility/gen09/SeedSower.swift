//
//  SeedSower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let seedSower = SeedSower.ability
}

enum SeedSower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "seed-sower")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こぼれダネ"
        default:
            "Seed Sower"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "攻撃を受けると、場をグラスフィールドにする。"
        case (.ix, _):
            "When hit by an attack, the Pokémon creates Grassy Terrain."
        default:
            name(locale: locale)
        }
    }
}
