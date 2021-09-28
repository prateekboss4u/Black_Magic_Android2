//
//  BookContent.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 22/09/21.
//

import SwiftUI

struct BookContent: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let writer: String
    let buyingUrl: URL
    
    
}
struct BookList {
    
    static let books = [
        BookContent(
            imageName: "TheHungerGame",
                    title: "The Hunger Games",
                    description: "In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV. Sixteen-year-old Katniss Everdeen, who lives alone with her mother and younger sister, regards it as a death sentence when she steps forward to take her sister's place in the Games. But Katniss has been close to dead before—and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weight survival against humanity and life against love.",
                    writer: "Suzanne Collins",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/1?book_id=2767052&page_type=book&page_type_id=2767052&ref=x_gr_w_bb&source=dropdown&sub_page_type=show")!),
        BookContent(
            imageName: "HP",
                    title: "Harry Potter and the Sorcerer's Stone",
                    description: "Harry Potter's life is miserable. His parents are dead and he's stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he's a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry. After a lifetime of bottling up his magical powers, Harry finally feels like a normal kid. But even within the Wizarding community, he is special. He is the boy who lived: the only person to have ever survived a killing curse inflicted by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding world, only to vanish after failing to kill Harry. Though Harry's first year at Hogwarts is the best of his life, not everything is perfect. There is a dangerous secret object hidden within the castle walls, and Harry believes it's his responsibility to prevent it from falling into evil hands. But doing so will bring him into contact with forces more terrifying than he ever could have imagined.Full of sympathetic characters, wildly imaginative situations, and countless exciting details, the first installment in the series assembles an unforgettable magical world and sets the stage for many high-stakes adventures to come.",
                    writer: "J.K. Rowling",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=3&page_type=book&page_type_id=3&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "CityOfBones",
                    title: "City of Bones",
                    description: "When fifteen-year-old Clary Fray heads out to the Pandemonium Club in New York City, she hardly expects to witness a murder― much less a murder committed by three teenagers covered with strange tattoos and brandishing bizarre weapons. Then the body disappears into thin air. It's hard to call the police when the murderers are invisible to everyone else and when there is nothing―not even a smear of blood―to show that a boy has died. Or was he a boy? This is Clary's first meeting with the Shadowhunters, warriors dedicated to ridding the earth of demons. It's also her first encounter with Jace, a Shadowhunter who looks a little like an angel and acts a lot like a jerk. Within twenty-four hours Clary is pulled into Jace's world with a vengeance when her mother disappears and Clary herself is attacked by a demon. But why would demons be interested in ordinary mundanes like Clary and her mother? And how did Clary suddenly get the Sight? The Shadowhunters would like to know",
                    writer: "Cassandra Clare",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=256683&page_type=book&page_type_id=256683&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "FiftyShades",
                    title: "Fifty Shades of Grey",
                    description: "When literature student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who is beautiful, brilliant, and intimidating. The unworldly, innocent Ana is startled to realize she wants this man and, despite his enigmatic reserve, finds she is desperate to get close to him. Unable to resist Ana’s quiet beauty, wit, and independent spirit, Grey admits he wants her, too—but on his own terms. Shocked yet thrilled by Grey’s singular erotic tastes, Ana hesitates. For all the trappings of success—his multinational businesses, his vast wealth, his loving family—Grey is a man tormented by demons and consumed by the need to control. When the couple embarks on a daring, passionately physical affair, Ana discovers Christian Grey’s secrets and explores her own dark desires. Erotic, amusing, and deeply moving, the Fifty Shades Trilogy is a tale that will obsess you, possess you, and stay with you forever.",
                    writer: "E.L. James",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=10818853&page_type=book&page_type_id=10818853&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "GOT",
                    title: "A Game of Thrones",
                    description: "Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.",
                    writer: "George R.R. Martin",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=13496&page_type=book&page_type_id=13496&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "TG",
                    title: "Throne of Glass",
                    description: "After serving out a year of hard labor in the salt mines of Endovier for her crimes, 18-year-old assassin Celaena Sardothien is dragged before the Crown Prince. Prince Dorian offers her her freedom on one condition: she must act as his champion in a competition to find a new royal assassin.",
                    writer: "Sarah J. Maas",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/1?book_id=7896527&page_type=book&page_type_id=7896527&ref=x_gr_w_bb&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "Allegiant",
                    title: "Allegiant",
                    description: "The faction-based society that Tris Prior once believed in is shattered - fractured by violence and power struggles and scarred by loss and betrayal. So when offered a chance to explore the world past the limits she's known, Tris is ready. Perhaps beyond the fence, she and Tobias will find a simple new life together, free from complicated lies, tangled loyalties, and painful memories.",
                    writer: "Veronica Roth",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=18710190&page_type=book&page_type_id=18710190&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "Cinder",
                    title: "Cinder",
                    description: "Humans and androids crowd the raucous streets of New Beijing. A deadly plague ravages the population. From space, a ruthless Lunar people watch, waiting to make their move. No one knows that Earth’s fate hinges on one girl. . . . Cinder, a gifted mechanic, is a cyborg.",
                    writer: "Marissa Meyer",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=36381037&page_type=book&page_type_id=36381037&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "FSD",
                    title: "Fifty Shades Darker",
                    description: "Daunted by the singular sexual tastes and dark secrets of the beautiful, tormented young entrepreneur Christian Grey, Anastasia Steele has broken off their relationship to start a new career with a Seattle publishing house. But desire for Christian still dominates her every waking thought, and when he proposes a new arrangement, Anastasia cannot resist. They rekindle their searing sensual affair, and Anastasia learns more about the harrowing past of her damaged, driven, and demanding Fifty Shades. While Christian wrestles with his inner demons, Anastasia must confront her anger and envy of the women who came before her and make the most important decision of her life. Erotic, sparkling and suspenseful, Fifty Shades Darker is the irresistibly addictive second part of the Fifty Shades trilogy.",
                    writer: "E.L. James",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=11857408&page_type=book&page_type_id=11857408&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
        
        BookContent(imageName: "WeWereLiars",
                    title: "We Were Liars",
                    description: "#A beautiful and distinguished family. A private island. A brilliant, damaged girl; a passionate, political boy. A group of four friends—the Liars—whose friendship turns destructive. A revolution. An accident. A secret. Lies upon lies. True love. The truth.",
                    writer: "E. Lockhart",
                    buyingUrl: URL(string: "https://www.goodreads.com/book_link/follow/10?book_id=16143347&page_type=book&page_type_id=16143347&ref=x_gr_w_bb_audible&source=dropdown&sub_page_type=show")!),
    ]
}

