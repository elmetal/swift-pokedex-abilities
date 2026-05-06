//
//  DeltaStream.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as デルタストリーム in Japanese.
    ///
    /// The localized name of this ability is `"Delta Stream"` in English and
    /// `"デルタストリーム"` in Japanese.
    ///
    /// Use this value when you need to refer to Delta Stream by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.deltaStream
    /// ```
    ///
    /// The ability's raw value is `"delta-stream"`.
    static let deltaStream = DeltaStream.ability
}

enum DeltaStream: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "delta-stream")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "デルタストリーム"
        default:
            "Delta Stream"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ひこうタイプの弱点をなくす強い風を吹かせる。"
        case (.vi, _):
            "Creates strong winds that remove weaknesses of Flying-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
