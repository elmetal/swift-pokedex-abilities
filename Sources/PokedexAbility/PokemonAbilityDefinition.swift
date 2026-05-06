//
//  PokemonAbilityDefinition.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

protocol PokemonAbilityDefinition: Sendable {
    static var ability: PokemonAbility { get }

    static func name(locale: Locale) -> String
    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String
}

extension PokemonAbilityDefinition {
    static func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || ability.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

enum PokemonAbilityDefinitions {
    static let all: [any PokemonAbilityDefinition.Type] = [
        Stench.self,
        Drizzle.self,
        SpeedBoost.self,
        BattleArmor.self,
        Sturdy.self,
        Damp.self,
        Limber.self,
        SandVeil.self,
        Static.self,
        VoltAbsorb.self,
        WaterAbsorb.self,
        Oblivious.self,
        CloudNine.self,
        CompoundEyes.self,
        Insomnia.self,
        ColorChange.self,
        Immunity.self,
        FlashFire.self,
        ShieldDust.self,
        OwnTempo.self,
        SuctionCups.self,
        Intimidate.self,
        ShadowTag.self,
        RoughSkin.self,
        WonderGuard.self,
        Levitate.self,
        EffectSpore.self,
        Synchronize.self,
        ClearBody.self,
        NaturalCure.self,
        LightningRod.self,
        SereneGrace.self,
        SwiftSwim.self,
        Chlorophyll.self,
        Illuminate.self,
        Trace.self,
        HugePower.self,
        PoisonPoint.self,
        InnerFocus.self,
        MagmaArmor.self,
        WaterVeil.self,
        MagnetPull.self,
        Soundproof.self,
        RainDish.self,
        SandStream.self,
        Pressure.self,
        ThickFat.self,
        EarlyBird.self,
        FlameBody.self,
        RunAway.self,
        KeenEye.self,
        HyperCutter.self,
        Pickup.self,
        Truant.self,
        Hustle.self,
        CuteCharm.self,
        Plus.self,
        Minus.self,
        Forecast.self,
        StickyHold.self,
        ShedSkin.self,
        Guts.self,
        MarvelScale.self,
        LiquidOoze.self,
        Overgrow.self,
        Blaze.self,
        Torrent.self,
        Swarm.self,
        RockHead.self,
        Drought.self,
        ArenaTrap.self,
        VitalSpirit.self,
        WhiteSmoke.self,
        PurePower.self,
        ShellArmor.self,
        Cacophony.self,
        AirLock.self,
    ]

    static func definition(for ability: PokemonAbility) -> (any PokemonAbilityDefinition.Type)? {
        all.first { $0.ability == ability }
    }
}
