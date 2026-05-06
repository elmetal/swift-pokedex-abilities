//
//  Damp.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let damp = Damp.ability
}

enum Damp: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "damp")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しめりけ"
        default:
            "Damp"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "じばく・だいばくはつを使えなくする。"
        case (.iii, _):
            "Prevents Self-Destruct and Explosion from being used."
        default:
            name(locale: locale)
        }
    }
}
