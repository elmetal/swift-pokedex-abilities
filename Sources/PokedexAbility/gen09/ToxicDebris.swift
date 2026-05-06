//
//  ToxicDebris.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let toxicDebris = ToxicDebris.ability
}

enum ToxicDebris: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "toxic-debris")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくげしょう"
        default:
            "Toxic Debris"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "物理技を受けると、相手側の場にどくびしを散らす。"
        case (.ix, _):
            "When hit by a physical move, toxic spikes are scattered on the opposing side."
        default:
            name(locale: locale)
        }
    }
}
