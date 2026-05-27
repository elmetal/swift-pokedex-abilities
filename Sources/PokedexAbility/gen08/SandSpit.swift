//
//  SandSpit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すなはき in Japanese.
    ///
    /// The localized name of this ability is `"Sand Spit"` in English and
    /// `"すなはき"` in Japanese.
    ///
    /// Use this value when you need to refer to Sand Spit by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sandSpit
    /// ```
    ///
    /// The ability's raw value is `"sand-spit"`.
    static let sandSpit = SandSpit.ability
}

enum SandSpit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-spit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなはき"
        default:
            "Sand Spit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "攻撃を受けると、天気をすなあらしにする。"
        case (.viii ... .ix, _):
            "When hit by an attack, the Pokémon creates a sandstorm."
        default:
            name(locale: locale)
        }
    }
}
