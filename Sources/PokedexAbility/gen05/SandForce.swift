//
//  SandForce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すなのちから in Japanese.
    ///
    /// The localized name of this ability is `"Sand Force"` in English and
    /// `"すなのちから"` in Japanese.
    ///
    /// Use this value when you need to refer to Sand Force by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sandForce
    /// ```
    ///
    /// The ability's raw value is `"sand-force"`.
    static let sandForce = SandForce.ability
}

enum SandForce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-force")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなのちから"
        default:
            "Sand Force"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "すなあらしの時、いわ・じめん・はがねタイプの技の威力が1.3倍になり、すなあらしのダメージを受けない。"
        case (.v ... .ix, _):
            "During a sandstorm, Rock-, Ground-, and Steel-type moves have 1.3x power, and sandstorm damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
