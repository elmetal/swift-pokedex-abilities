//
//  BallFetch.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let ballFetch = BallFetch.ability
}

enum BallFetch: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ball-fetch")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "たまひろい"
        default:
            "Ball Fetch"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "道具を持っていない時、捕獲に失敗した最初のボールを拾ってくる。"
        case (.viii, _):
            "If the Pokémon is not holding an item, it picks up the first failed Poké Ball thrown in battle."
        default:
            name(locale: locale)
        }
    }
}
