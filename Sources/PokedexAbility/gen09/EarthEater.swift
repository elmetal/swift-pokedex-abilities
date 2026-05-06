//
//  EarthEater.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どしょく in Japanese.
    ///
    /// The localized name of this ability is `"Earth Eater"` in English and
    /// `"どしょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Earth Eater by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.earthEater
    /// ```
    ///
    /// The ability's raw value is `"earth-eater"`.
    static let earthEater = EarthEater.ability
}

enum EarthEater: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "earth-eater")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どしょく"
        default:
            "Earth Eater"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "じめんタイプの技を受けると、ダメージを受けず最大HPの1/4回復する。"
        case (.ix, _):
            "Ground-type moves heal 1/4 of maximum HP instead of dealing damage."
        default:
            name(locale: locale)
        }
    }
}
