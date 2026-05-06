//
//  SurgeSurfer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as サーフテール in Japanese.
    ///
    /// The localized name of this ability is `"Surge Surfer"` in English and
    /// `"サーフテール"` in Japanese.
    ///
    /// Use this value when you need to refer to Surge Surfer by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.surgeSurfer
    /// ```
    ///
    /// The ability's raw value is `"surge-surfer"`.
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
