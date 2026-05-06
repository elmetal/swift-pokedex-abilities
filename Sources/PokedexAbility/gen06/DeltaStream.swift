//
//  DeltaStream.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let deltaStream = DeltaStream.ability
}

enum DeltaStream: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "delta-stream")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "デルタストリーム"
        default:
            "Delta Stream"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ひこうタイプの弱点をなくす強い風を吹かせる。"
        case (.vi, _):
            "Creates strong winds that remove weaknesses of Flying-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
