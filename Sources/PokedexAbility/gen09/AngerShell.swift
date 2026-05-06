//
//  AngerShell.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let angerShell = AngerShell.ability
}

enum AngerShell: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "anger-shell")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いかりのこうら"
        default:
            "Anger Shell"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "攻撃でHPが半分以下になると、こうげき・とくこう・すばやさが1段階上がり、ぼうぎょ・とくぼうが1段階下がる。"
        case (.ix, _):
            "When HP drops to half or less from an attack, Attack, Special Attack, and Speed rise by one stage, and Defense and Special Defense fall by one stage."
        default:
            name(locale: locale)
        }
    }
}
