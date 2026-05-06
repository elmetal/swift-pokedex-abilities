//
//  AngerPoint.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as いかりのつぼ in Japanese.
    ///
    /// The localized name of this ability is `"Anger Point"` in English and
    /// `"いかりのつぼ"` in Japanese.
    ///
    /// Use this value when you need to refer to Anger Point by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.angerPoint
    /// ```
    ///
    /// The ability's raw value is `"anger-point"`.
    static let angerPoint = AngerPoint.ability
}

enum AngerPoint: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "anger-point")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いかりのつぼ"
        default:
            "Anger Point"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "急所に当たる攻撃を受けた時、こうげきが最大まで上がる。"
        case (.iv, _):
            "When the Pokémon is hit by a critical hit, its Attack rises to the maximum stage."
        default:
            name(locale: locale)
        }
    }
}
