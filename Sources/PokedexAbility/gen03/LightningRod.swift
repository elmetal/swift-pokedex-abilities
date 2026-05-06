//
//  LightningRod.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let lightningRod = LightningRod.ability
}

enum LightningRod: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "lightning-rod")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひらいしん"
        default:
            "Lightning Rod"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ダブルバトルで、単体を対象にするでんきタイプの技を自分に引き寄せる。"
        case (.iii, _):
            "In Double Battles, single-target Electric-type moves are redirected to the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
