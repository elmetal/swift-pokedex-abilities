//
//  SandStream.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すなおこし in Japanese.
    ///
    /// The localized name of this ability is `"Sand Stream"` in English and
    /// `"すなおこし"` in Japanese.
    ///
    /// Use this value when you need to refer to Sand Stream by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sandStream
    /// ```
    ///
    /// The ability's raw value is `"sand-stream"`.
    static let sandStream = SandStream.ability
}

enum SandStream: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-stream")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなおこし"
        default:
            "Sand Stream"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "登場した時、天気を永続するすなあらしにする。"
        case (.iii, _):
            "When the Pokémon enters battle, it makes a sandstorm continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
