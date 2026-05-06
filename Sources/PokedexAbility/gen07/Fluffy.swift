//
//  Fluffy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let fluffy = Fluffy.ability
}

enum Fluffy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "fluffy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "もふもふ"
        default:
            "Fluffy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "直接攻撃で受けるダメージが半分になるが、ほのおタイプの技で受けるダメージが2倍になる。"
        case (.vii, _):
            "Contact move damage is halved, but Fire-type move damage is doubled."
        default:
            name(locale: locale)
        }
    }
}
