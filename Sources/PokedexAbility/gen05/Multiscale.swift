//
//  Multiscale.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let multiscale = Multiscale.ability
}

enum Multiscale: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "multiscale")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マルチスケイル"
        default:
            "Multiscale"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "HPが満タンの時、攻撃技で受けるダメージが半分になる。"
        case (.v, _):
            "When HP is full, damage taken from attacks is halved."
        default:
            name(locale: locale)
        }
    }
}
