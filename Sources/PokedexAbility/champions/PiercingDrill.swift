//
//  PiercingDrill.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let piercingDrill = PiercingDrill.ability
}

enum PiercingDrill: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "piercing-drill")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かんつうドリル"
        default:
            "Piercing Drill"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "直接攻撃の技が相手の守る効果を貫通し、本来の1/4のダメージを与える。"
        case (.champions, _):
            "Contact moves can hit through protection moves, dealing 1/4 of the damage they would otherwise deal."
        default:
            name(locale: locale)
        }
    }
}
