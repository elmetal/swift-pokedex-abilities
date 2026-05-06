//
//  QuarkDrive.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as クォークチャージ in Japanese.
    ///
    /// The localized name of this ability is `"Quark Drive"` in English and
    /// `"クォークチャージ"` in Japanese.
    ///
    /// Use this value when you need to refer to Quark Drive by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.quarkDrive
    /// ```
    ///
    /// The ability's raw value is `"quark-drive"`.
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
