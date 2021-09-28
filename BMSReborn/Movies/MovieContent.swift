//
//  MovieContent.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 18/09/21.
//

import SwiftUI


struct MovieContent: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let rating: Double
    let releaseDate: String
    let url: URL
    let director: String
    
}

struct MovieList {
    
    static let movies = [
        MovieContent(imageName: "ShangChi",
                     title: "Shang-Chi and the Legend of the Ten Rings",
                     description: "Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.",
                     rating: 7.9,
                     releaseDate: "03/09/2021",
                     url: URL(string: "https://www.youtube.com/watch?v=8YjFbMbfXaQ")!,
                     director: "Destin Daniel Cretton"),
        
        MovieContent(imageName: "JurassicHunt",
                     title: "Jurassic Hunt",
                     description: "Female adventurer Parker joins a crew of male trophy hunters in a remote wilderness park. Their goal: slaughter genetically recreated dinosaurs for sport using rifles, arrows, and grenades. After their guide is killed by raptors, the team tries to escape the park – but the hunters quickly become the hunted. Even worse, the park’s manager suspects Parker of being a spy and sends a hit squad after her. This battle’s about to become primitive!",
                     rating: 4.9,
                     releaseDate: "01/09/2021",
                     url: URL(string: "https://youtu.be/H9gpZqn-TtU")!,
                     director: "Hank Braxtan"),
        
        MovieContent(imageName: "Malignant",
                     title: "Malignant",
                     description: "Madison is paralyzed by shocking visions of grisly murders, and her torment worsens as she discovers that these waking dreams are in fact terrifying realities with a mysterious tie to her past.",
                     rating: 7.3,
                     releaseDate: "10/09/2021",
                     url: URL(string: "https://youtu.be/Gczt0fhawDs")!,
                     director: "James Wan"),
        
        MovieContent(imageName: "TheSuicideSquad",
                     title: "The Suicide Squad",
                     description: "Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.",
                     rating: 7.9,
                     releaseDate: "06/08/2021",
                     url: URL(string: "https://youtu.be/vBumm7mYT_0")!,
                     director: "James Gunn"),
        
        MovieContent(imageName: "EscapeRoom",
                     title: "Escape Room: Tournament of Champions",
                     description: "Six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive as they discover all the games that they've played before.",
                     rating: 7.1,
                     releaseDate: "16/07/2021",
                     url: URL(string: "https://youtu.be/KlfUbZJVInA")!,
                     director: "Adam Robitel"),
        
        MovieContent(imageName: "TheTomorrowWar",
                     title: "The Tomorrow War",
                     description: "The world is stunned when a group of time travelers arrive from the year 2051 to deliver an urgent message: Thirty years in the future, mankind is losing a global war against a deadly alien species. The only hope for survival is for soldiers and civilians from the present to be transported to the future and join the fight. Among those recruited is high school teacher and family man Dan Forester. Determined to save the world for his young daughter, Dan teams up with a brilliant scientist and his estranged father in a desperate quest to rewrite the fate of the planet.",
                     rating: 8.1,
                     releaseDate: "02/07/2021",
                     url: URL(string: "https://youtu.be/RQjEbkV-9ZM")!,
                     director: "Chris McKay"),
        
        MovieContent(imageName: "SAS",
                     title: "SAS: Red Notice",
                     description: "An off-duty SAS soldier, Tom Buckingham, must thwart a terror attack on a train running through the Channel Tunnel. As the action escalates on the train, events transpire in the corridors of power that may make the difference as to whether Buckingham and the civilian passengers make it out of the tunnel alive.",
                     rating: 5.9,
                     releaseDate: "11/08/2021",
                     url: URL(string: "https://youtu.be/GWSfMde1Sx8")!, director: "Magnus Martens"),
        
        MovieContent(imageName: "JungleCruise",
                     title: "Jungle Cruise",
                     description: "Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal – a discovery that will change the future of medicine.",
                     rating: 7.9,
                     releaseDate: "24/09/2021",
                     url: URL(string: "https://youtu.be/hJZ82pwwJqA")!,
                     director: "Jaume Collet-Serra"),
        
        MovieContent(imageName: "Breathe",
                     title: "Don't Breathe 2",
                     description: "The Blind Man has been hiding out for several years in an isolated cabin and has taken in and raised a young girl orphaned from a devastating house fire. Their quiet life together is shattered when a group of criminals kidnap the girl, forcing the Blind Man to leave his safe haven to save her.",
                     rating: 7.6,
                     releaseDate: "17/09/2021",
                     url: URL(string: "https://youtu.be/gRbG2tjHYCA")!,
                     director: "Rodo Sayagues"),
        
        MovieContent(imageName: "BlackWidow",
                     title: "Black Widow",
                     description: "Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger.",
                     rating: 7.8,
                     releaseDate: "09/07/2021",
                     url: URL(string: "https://youtu.be/ybji16u608U")!,
                     director: "Cate Shortland"),
        
        
    ]
}
