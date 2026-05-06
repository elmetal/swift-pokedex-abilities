//
//  ElectricSurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let electricSurge = ElectricSurge.ability
}

enum ElectricSurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "electric-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "エレキメイカー"
        default:
            "Electric Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "登場した時、場をエレキフィールドにする。"
        case (.vii, _):
            "When the Pokémon enters battle, it creates Electric Terrain."
        default:
            name(locale: locale)
        }
    }
}
