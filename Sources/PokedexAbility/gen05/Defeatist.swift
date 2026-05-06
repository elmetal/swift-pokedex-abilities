//
//  Defeatist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let defeatist = Defeatist.ability
}

enum Defeatist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "defeatist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よわき"
        default:
            "Defeatist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "HPが半分以下の時、こうげきととくこうが半分になる。"
        case (.v, _):
            "When HP is half or less, Attack and Special Attack are halved."
        default:
            name(locale: locale)
        }
    }
}
