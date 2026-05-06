//
//  RKSSystem.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let rksSystem = RKSSystem.ability
}

enum RKSSystem: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rks-system")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ARシステム"
        default:
            "RKS System"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "持っているメモリに応じてタイプが変わる。"
        case (.vii, _):
            "The Pokémon's type changes according to the memory it holds."
        default:
            name(locale: locale)
        }
    }
}
