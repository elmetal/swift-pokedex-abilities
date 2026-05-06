//
//  Soundproof.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let soundproof = Soundproof.ability
}

enum Soundproof: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "soundproof")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぼうおん"
        default:
            "Soundproof"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "音に関係する技を受けない。"
        case (.iii, _):
            "Sound-based moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
