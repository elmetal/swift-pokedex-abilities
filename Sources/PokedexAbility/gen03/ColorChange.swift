//
//  ColorChange.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let colorChange = ColorChange.ability
}

enum ColorChange: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "color-change")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "へんしょく"
        default:
            "Color Change"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "攻撃技を受けた後、自分のタイプが受けた技のタイプになる。"
        case (.iii, _):
            "After being hit by a damaging move, the Pokémon becomes that move's type."
        default:
            name(locale: locale)
        }
    }
}
