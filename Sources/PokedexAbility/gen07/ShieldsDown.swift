//
//  ShieldsDown.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let shieldsDown = ShieldsDown.ability
}

enum ShieldsDown: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shields-down")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リミットシールド"
        default:
            "Shields Down"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "メテノはHPが半分より多い時、殻にこもった姿になり状態異常にならない。"
        case (.vii, _):
            "Minior changes form and is protected from status conditions while its HP is above half."
        default:
            name(locale: locale)
        }
    }
}
