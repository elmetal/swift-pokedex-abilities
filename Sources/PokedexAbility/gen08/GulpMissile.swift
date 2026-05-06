//
//  GulpMissile.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as うのミサイル in Japanese.
    ///
    /// The localized name of this ability is `"Gulp Missile"` in English and
    /// `"うのミサイル"` in Japanese.
    ///
    /// Use this value when you need to refer to Gulp Missile by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.gulpMissile
    /// ```
    ///
    /// The ability's raw value is `"gulp-missile"`.
    static let gulpMissile = GulpMissile.ability
}

enum GulpMissile: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gulp-missile")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "うのミサイル"
        default:
            "Gulp Missile"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "なみのりかダイビングを使うと獲物をくわえ、ダメージを受けた時に反撃する。"
        case (.viii, _):
            "After using Surf or Dive, Cramorant catches prey and counterattacks when damaged."
        default:
            name(locale: locale)
        }
    }
}
