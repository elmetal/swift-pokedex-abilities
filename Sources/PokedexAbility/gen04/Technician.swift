//
//  Technician.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let technician = Technician.ability
}

enum Technician: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "technician")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テクニシャン"
        default:
            "Technician"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "威力60以下の技の威力が1.5倍になる。"
        case (.iv, _):
            "Moves with 60 power or less have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
