//
//  PrimordialSea.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let primordialSea = PrimordialSea.ability
}

enum PrimordialSea: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "primordial-sea")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はじまりのうみ"
        default:
            "Primordial Sea"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ほのおタイプの攻撃技を無効化する強い雨にする。"
        case (.vi, _):
            "Creates heavy rain that nullifies Fire-type attacks."
        default:
            name(locale: locale)
        }
    }
}
