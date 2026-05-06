//
//  Bulletproof.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let bulletproof = Bulletproof.ability
}

enum Bulletproof: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "bulletproof")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぼうだん"
        default:
            "Bulletproof"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "弾や爆弾に関係する技を受けない。"
        case (.vi, _):
            "Ball and bomb moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
