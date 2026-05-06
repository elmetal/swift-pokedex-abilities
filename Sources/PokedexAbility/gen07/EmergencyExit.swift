//
//  EmergencyExit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let emergencyExit = EmergencyExit.ability
}

enum EmergencyExit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "emergency-exit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ききかいひ"
        default:
            "Emergency Exit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "HPが半分以下になると交代する。"
        case (.vii, _):
            "When HP drops to half or less, the Pokémon switches out."
        default:
            name(locale: locale)
        }
    }
}
