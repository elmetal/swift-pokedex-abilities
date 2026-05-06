//
//  SurgeSurfer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let surgeSurfer = SurgeSurfer.ability
}

enum SurgeSurfer: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "surge-surfer")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "サーフテール"
        default:
            "Surge Surfer"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "エレキフィールドの時、すばやさが2倍になる。"
        case (.vii, _):
            "During Electric Terrain, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
