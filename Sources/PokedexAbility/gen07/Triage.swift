//
//  Triage.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let triage = Triage.ability
}

enum Triage: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "triage")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヒーリングシフト"
        default:
            "Triage"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "回復技の優先度が3上がる。"
        case (.vii, _):
            "Healing moves have their priority increased by three."
        default:
            name(locale: locale)
        }
    }
}
