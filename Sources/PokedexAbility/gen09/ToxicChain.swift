//
//  ToxicChain.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let toxicChain = ToxicChain.ability
}

enum ToxicChain: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "toxic-chain")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくのくさり"
        default:
            "Toxic Chain"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分の技で相手をもうどく状態にすることがある。"
        case (.ix, _):
            "Moves used by the Pokémon may badly poison the target."
        default:
            name(locale: locale)
        }
    }
}
