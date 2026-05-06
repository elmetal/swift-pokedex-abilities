//
//  RockyPayload.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let rockyPayload = RockyPayload.ability
}

enum RockyPayload: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rocky-payload")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いわはこび"
        default:
            "Rocky Payload"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "いわタイプの技の威力が1.5倍になる。"
        case (.ix, _):
            "Rock-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
