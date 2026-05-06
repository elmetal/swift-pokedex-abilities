//
//  QuarkDrive.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let quarkDrive = QuarkDrive.ability
}

enum QuarkDrive: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "quark-drive")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "クォークチャージ"
        default:
            "Quark Drive"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "エレキフィールドの時やブーストエナジーを持っている時、最も高い能力が上がる。"
        case (.ix, _):
            "During Electric Terrain or when holding Booster Energy, the Pokémon's highest stat is boosted."
        default:
            name(locale: locale)
        }
    }
}
