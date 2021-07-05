//
//  Constants.swift
//  NBA Stats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import SwiftUI

enum NBAError: String, Error {
    case badUrl             = "An error occured while retrieving the data, invalid url.\nPlease try again."
    case invalidResponse    = "Invalid response from the server.\nPlease try again."
    case invalidData        = "Invalid data received from the server.\nPlease try again."
    case decodingError      = "An error occured while decoding the data.\nPlease try again."
}


enum SFSymbols {
    static let games        = "calendar"
    static let standings    = "list.number"
    static let favorites    = "heart.fill"
    static let info         = "info.circle"
    static let home         = "house.fill"
    static let away         = "airplane"
    static let lastTen      = "gobackward.10"
    static let ranking      = "arrow.up.arrow.down.square"
}


enum Conferences: String, CaseIterable, Identifiable {
    case Western
    case Eastern
    var id: String { self.rawValue }
}


let Teams = [
    "Atlanta Hawks",
    "Brooklin Nets",
    "Boston Celtics",
    "Charlotte Hornets",
    "Chicago Bulls",
    "Cleveland Cavaliers",
    "Dallas Mavericks",
    "Denver Nuggets",
    "Detroit Pistons",
    "Golden State Warriors",
    "Houston Rockets",
    "Indiana Pacers",
    "Los Angeles Clippers",
    "Los Angeles Lakers",
    "Memphis Grizzlies",
    "Miami Heat",
    "Milwaukee Bucks",
    "Minnesota Timberwolves",
    "New Orleans Pelicans",
    "New York Knicks",
    "Oklahoma City Thunder",
    "Orlando Magic",
    "Philadelphia 76ers",
    "Phoenix Suns",
    "Portland Trailblazers",
    "Sacramento Kings",
    "SanAntonio Spurs",
    "Toronto Raptors",
    "Utah Jazz",
    "Washington Wizards"
]


enum Logos {
    static let AtlantaHawks             = Image("ATL")
    static let BrooklinNets             = Image("BKN")
    static let BostonCeltics            = Image("BOS")
    static let CharlotteHornets         = Image("CHA")
    static let ChicagoBulls             = Image("CHI")
    static let ClevelandCavaliers       = Image("CLE")
    static let DallasMavericks          = Image("DAL")
    static let DenverNuggets            = Image("DEN")
    static let DetroitPistons           = Image("DET")
    static let GoldenStateWarriors      = Image("GSW")
    static let HoustonRockets           = Image("HOU")
    static let IndianaPacers            = Image("IND")
    static let LosAngelesClippers       = Image("LAC")
    static let LosAngelesLakers         = Image("LAL")
    static let MemphisGrizzlies         = Image("MEM")
    static let MiamiHeat                = Image("MIA")
    static let MilwaukeeBucks           = Image("MIL")
    static let MinnesotaTimberwolves    = Image("MIN")
    static let NewOrleansPelicans       = Image("NOP")
    static let NewYorkKnicks            = Image("NYK")
    static let OklahomaCityThunder      = Image("OKC")
    static let OrlandoMagic             = Image("ORL")
    static let Philadelphia76ers        = Image("PHI")
    static let PhoenixSuns              = Image("PHO")
    static let PortlandTrailblazers     = Image("POR")
    static let SacramentoKings          = Image("SAC")
    static let SanAntonioSpurs          = Image("SAS")
    static let TorontoRaptors           = Image("TOR")
    static let UtahJazz                 = Image("UTA")
    static let WashingtonWizards        = Image("WAS")
}


let team: [Int: Image] = [
    1: Logos.WashingtonWizards,
    2: Logos.CharlotteHornets,
    3: Logos.AtlantaHawks,
    4: Logos.MiamiHeat,
    5: Logos.OrlandoMagic,
    6: Logos.NewYorkKnicks,
    7: Logos.Philadelphia76ers,
    8: Logos.BrooklinNets,
    9: Logos.BostonCeltics,
    10: Logos.TorontoRaptors,
    11: Logos.ChicagoBulls,
    12: Logos.ClevelandCavaliers,
    13: Logos.IndianaPacers,
    14: Logos.DetroitPistons,
    15: Logos.MilwaukeeBucks,
    16: Logos.MinnesotaTimberwolves,
    17: Logos.UtahJazz,
    18: Logos.OklahomaCityThunder,
    19: Logos.PortlandTrailblazers,
    20: Logos.DenverNuggets,
    21: Logos.MemphisGrizzlies,
    22: Logos.HoustonRockets,
    23: Logos.NewOrleansPelicans,
    24: Logos.SanAntonioSpurs,
    25: Logos.DallasMavericks,
    26: Logos.GoldenStateWarriors,
    27: Logos.LosAngelesLakers,
    28: Logos.LosAngelesClippers,
    29: Logos.PhoenixSuns,
    30: Logos.SacramentoKings
]
