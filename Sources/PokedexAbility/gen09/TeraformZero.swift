//
//  TeraformZero.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ゼロフォーミング in Japanese.
    ///
    /// The localized name of this ability is `"Teraform Zero"` in English and
    /// `"ゼロフォーミング"` in Japanese.
    ///
    /// Use this value when you need to refer to Teraform Zero by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.teraformZero
    /// ```
    ///
    /// The ability's raw value is `"teraform-zero"`.
    static let teraformZero = TeraformZero.ability
}

enum TeraformZero: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "teraform-zero")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゼロフォーミング"
        default:
            "Teraform Zero"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ステラフォルムになった時、天気とフィールドの効果を消す。"
        case (.ix, _):
            "When the Pokémon changes into Stellar Form, weather and terrain effects disappear."
        default:
            name(locale: locale)
        }
    }
}
