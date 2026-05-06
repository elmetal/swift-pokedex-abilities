//
//  Rattled.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let rattled = Rattled.ability
}

enum Rattled: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rattled")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "びびり"
        default:
            "Rattled"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "むし・ゴースト・あくタイプの技を受けた時、すばやさが1段階上がる。"
        case (.v, _):
            "When hit by a Bug-, Ghost-, or Dark-type move, Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
