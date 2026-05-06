//
//  SereneGrace.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sereneGrace = SereneGrace.ability
}

enum SereneGrace: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "serene-grace")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てんのめぐみ"
        default:
            "Serene Grace"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "自分の技の追加効果の発生率が2倍になる。"
        case (.iii, _):
            "Additional effect chances of the Pokémon's moves are doubled."
        default:
            name(locale: locale)
        }
    }
}
