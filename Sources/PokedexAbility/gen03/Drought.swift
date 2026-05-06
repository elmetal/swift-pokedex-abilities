//
//  Drought.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let drought = Drought.ability
}

enum Drought: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "drought")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひでり"
        default:
            "Drought"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "登場した時、天気を永続する晴れにする。"
        case (.iii, _):
            "When the Pokémon enters battle, it makes harsh sunlight continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
