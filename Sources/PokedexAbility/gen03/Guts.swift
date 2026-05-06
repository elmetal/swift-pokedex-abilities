//
//  Guts.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let guts = Guts.ability
}

enum Guts: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "guts")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こんじょう"
        default:
            "Guts"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "状態異常の時、こうげきが1.5倍になる。"
        case (.iii, _):
            "When affected by a status condition, Attack is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
