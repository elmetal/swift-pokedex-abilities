//
//  SkillLink.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let skillLink = SkillLink.ability
}

enum SkillLink: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "skill-link")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スキルリンク"
        default:
            "Skill Link"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "連続攻撃技が必ず5回当たる。"
        case (.iv, _):
            "Variable-hit multi-strike moves always hit five times."
        default:
            name(locale: locale)
        }
    }
}
