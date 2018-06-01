
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) 


CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) 



CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) 



INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add books', 7, 'add_books'),
(20, 'Can change books', 7, 'change_books'),
(21, 'Can delete books', 7, 'delete_books'),
(22, 'Can add genres', 8, 'add_genres'),
(23, 'Can change genres', 8, 'change_genres'),
(24, 'Can delete genres', 8, 'delete_genres'),
(25, 'Can add user', 9, 'add_user'),
(26, 'Can change user', 9, 'change_user'),
(27, 'Can delete user', 9, 'delete_user'),
(28, 'Can add user book', 10, 'add_userbook'),
(29, 'Can change user book', 10, 'change_userbook'),
(30, 'Can delete user book', 10, 'delete_userbook'),
(31, 'Can add user comment user', 11, 'add_usercommentuser'),
(32, 'Can change user comment user', 11, 'change_usercommentuser'),
(33, 'Can delete user comment user', 11, 'delete_usercommentuser');



CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) 


CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) 



CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
)



CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `summary` varchar(10000) NOT NULL,
  `author` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) 



INSERT INTO `books` (`id`, `genre`, `name`, `summary`, `author`, `rating`, `image`) VALUES
(1, 1, 'The Fault in Our Stars', 'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel\'s story is about to be completely rewritten.\r\n\r\nInsightful, bold, irreverent, and raw, The Fault in Our Stars is award-winning author John Green\'s most ambitious and heartbreaking work yet, brilliantly exploring the funny, thrilling, and tragic business of being alive and in love', 'John Green', 4, 'https://images.gr-assets.com/books/1360206420l/11870085.jpg'),
(2, 1, 'Fifty Shades of Grey', 'When literature student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who is beautiful, brilliant, and intimidating. The unworldly, innocent Ana is startled to realize she wants this man and, despite his enigmatic reserve, finds she is desperate to get close to him. Unable to resist Ana’s quiet beauty, wit, and independent spirit, Grey admits he wants her, too—but on his own terms.\r\n \r\nShocked yet thrilled by Grey’s singular erotic tastes, Ana hesitates. For all the trappings of success—his multinational businesses, his vast wealth, his loving family—Grey is a man tormented by demons and consumed by the need to control. When the couple embarks on a daring, passionately physical affair, Ana discovers Christian Grey’s secrets and explores her own dark desires.\r\n\r\nErotic, amusing, and deeply moving, the Fifty Shades Trilogy is a tale that will obsess you, possess you, and stay with you forever', 'E.L. James', 4, 'https://images.gr-assets.com/books/1385207843l/10818853.jpg'),
(3, 1, 'New Moon', 'I knew we were both in mortal danger. Still, in that instant, I felt well. Whole. I could feel my heart racing in my chest, the blood pulsing hot and fast through my veins again. My lungs filled deep with the sweet scent that came off his skin. It was like there had never been any hole in my chest. I was perfect - not healed, but as if there had never been a wound in the first place. \r\n\r\nFor Bella Swan, there is one thing more important than life itself: Edward Cullen. But being in love with a vampire is even more dangerous than Bella could ever have imagined. Edward has already rescued Bella from the clutches of one evil vampire, but now, as their daring relationship threatens all that is near and dear to them, they realize their troubles may be just beginning...', 'Stephenie Meyer', 4, 'https://images.gr-assets.com/books/1361039440l/49041.jpg'),
(4, 1, 'Eclipse', 'As Seattle is ravaged by a string of mysterious killings and a malicious vampire continues her quest for revenge, Bella once again finds herself surrounded by danger. In the midst of it all, she is forced to choose between her love for Edward and her friendship with Jacob - knowing that her decision has the potential to ignite the ageless struggle between vampire and werewolf. With her graduation quickly approaching, Bella has one more decision to make: life or death. But which is which?', 'Stephenie Meyer', 4, 'https://images.gr-assets.com/books/1361038355l/428263.jpg'),
(5, 1, 'Outlander', 'The year is 1945. Claire Randall, a former combat nurse, is just back from the war and reunited with her husband on a second honeymoon when she walks through a standing stone in one of the ancient circles that dot the British Isles. Suddenly she is a Sassenach—an “outlander”—in a Scotland torn by war and raiding border clans in the year of Our Lord...1743.\r\n\r\nHurled back in time by forces she cannot understand, Claire is catapulted into the intrigues of lairds and spies that may threaten her life, and shatter her heart. For here James Fraser, a gallant young Scots warrior, shows her a love so absolute that Claire becomes a woman torn between fidelity and desire—and between two vastly different men in two irreconcilable lives.', 'Diana Gabaldon', 4, 'https://images.gr-assets.com/books/1402600310l/10964.jpg'),
(6, 1, 'Eleanor & Park', 'Two misfits.\r\nOne extraordinary love.\r\n\r\nEleanor... Red hair, wrong clothes. Standing behind him until he turns his head. Lying beside him until he wakes up. Making everyone else seem drabber and flatter and never good enough...Eleanor.\r\n\r\nPark... He knows she\'ll love a song before he plays it for her. He laughs at her jokes before she ever gets to the punch line. There\'s a place on his chest, just below his throat, that makes her want to keep promises...Park.\r\n\r\nSet over the course of one school year, this is the story of two star-crossed sixteen-year-olds—smart enough to know that first love almost never lasts, but brave and desperate enough to try', 'Rainbow Rowell', 4, 'https://images.gr-assets.com/books/1341952742l/15745753.jpg'),
(7, 1, 'Jane Eyre', 'AmaOrphaned as a child, Jane has felt an outcast her whole young life. Her courage is tested once again when she arrives at Thornfield Hall, where she has been hired by the brooding, proud Edward Rochester to care for his ward Adèle. Jane finds herself drawn to his troubled yet kind spirit. She falls in love. Hard.\r\n\r\nBut there is a terrifying secret inside the gloomy, forbidding Thornfield Hall. Is Rochester hiding from Jane? Will Jane be left heartbroken and exiled once again?nda Hale', 'Amanda Hale', 4, 'https://images.gr-assets.com/books/1327867269l/10210.jpg'),
(8, 1, 'The Time Traveler\'s Wife', 'A funny, often poignant tale of boy meets girl with a twist: what if one of them couldn\'t stop slipping in and out of time? Highly original and imaginative, this debut novel raises questions about life, love, and the effects of time on relationships.\r\n\r\nAudrey Niffenegger’s innovative debut, The Time Traveler’s Wife, is the story of Clare, a beautiful art student, and Henry, an adventuresome librarian, who have known each other since Clare was six and Henry was thirty-six, and were married when Clare was twenty-three and Henry thirty-one. Impossible but true, because Henry is one of the first people diagnosed with Chrono-Displacement Disorder: periodically his genetic clock resets and he finds himself misplaced in time, pulled to moments of emotional gravity in his life, past and future. His disappearances are spontaneous, his experiences unpredictable, alternately harrowing and amusing. \r\n\r\nThe Time Traveler’s Wife depicts the effects of time travel on Henry and Clare’s marriage and their passionate love for each other as the story unfolds from both points of view. Clare and Henry attempt to live normal lives, pursuing familiar goals—steady jobs, good friends, children of their own. All of this is threatened by something they can neither prevent nor control, making their story intensely moving and entirely unforgettable.', 'Audrey Niffenegger', 4, 'https://images.gr-assets.com/books/1380660571l/18619684.jpg'),
(9, 1, 'Romeo and Juliet', 'In Romeo and Juliet, Shakespeare creates a world of violence and generational conflict in which two young people fall in love and die because of that love. The story is rather extraordinary in that the normal problems faced by young lovers are here so very large. It is not simply that the families of Romeo and Juliet disapprove of the lover\'s affection for each other; rather, the Montagues and the Capulets are on opposite sides in a blood feud and are trying to kill each other on the streets of Verona. Every time a member of one of the two families dies in the fight, his relatives demand the blood of his killer. Because of the feud, if Romeo is discovered with Juliet by her family, he will be killed. Once Romeo is banished, the only way that Juliet can avoid being married to someone else is to take a potion that apparently kills her, so that she is burried with the bodies of her slain relatives. In this violent, death-filled world, the movement of the story from love at first sight to the union of the lovers in death seems almost inevitable.\r\nWhat is so striking about this play is that despite its extraordinary setting (one perhaps reflecting Elizabethan attitudes about hot-blooded Italians), it has become the quintessential story of young love. Because most young lovers feel that they have to overcome giant obstacles in order to be together, because they feel that they would rather die than be kept apart, and especially because the language Shakespeare gives his young lovers is so exquisite, allowing them to say to each other just what we would all say to a lover if we only knew how, it is easy to respond to this play as if it were about all young lovers rather than about a particular couple in a very unusual world. (When the play was rewritten in the eighteen century as The History and Fall of Caius Marius, the violent setting became that of a particularly discordant period in classical Rome; when Leonard Berstein rewrote the play as West Side Story, he chose the violent world of New York street gangs.)', 'William Shakespeare', 4, 'https://images.gr-assets.com/books/1327872146l/18135.jpg'),
(10, 1, 'Anna and the French Kiss', 'Anna is looking forward to her senior year in Atlanta, where she has a great job, a loyal best friend, and a crush on the verge of becoming more. Which is why she is less than thrilled about being shipped off to boarding school in Paris--until she meets Étienne St. Clair. Smart, charming, beautiful, Étienne has it all...including a serious girlfriend. \r\n\r\nBut in the City of Light, wishes have a way of coming true. Will a year of romantic near-misses end with their long-awaited French kiss?', 'Stephanie Perkins', 4, 'https://images.gr-assets.com/books/1358271931l/6936382.jpg'),
(11, 2, 'The Bone Labyrinth', 'A war is coming, a battle that will stretch from the prehistoric forests of the ancient past to the cutting-edge research labs of today, all to reveal a true mystery buried deep within our DNA, a mystery that will leave readers changed forever . . .\r\n\r\nIn this groundbreaking masterpiece of ingenuity and intrigue that spans 50,000 years in human history, New York Times bestselling author James Rollins takes us to mankind’s next great leap.\r\n\r\nBut will it mark a new chapter in our development . . . or our extinction?\r\n\r\nIn the remote mountains of Croatia, an archaeologist makes a strange discovery:  a subterranean Catholic chapel, hidden for centuries, holds the bones of a Neanderthal woman. In the same cavern system, elaborate primitive paintings tell the story of an immense battle between tribes of Neanderthals and monstrous shadowy figures. Who is this mysterious enemy depicted in these ancient drawings and what do the paintings mean?\r\n\r\nBefore any answers could be made, the investigative team is attacked, while at the same time, a bloody assault is made upon a primate research center outside of Atlanta. How are these events connected? Who is behind these attacks?  The search for the truth will take Commander Gray Pierce of Sigma Force 50,000 years into the past. As he and Sigma trace the evolution of human intelligence to its true source, they will be plunged into a cataclysmic battle for the future of humanity that stretches across the globe . . . and beyond.\r\n\r\nWith the fate of our future at stake, Sigma embarks on its most harrowing odyssey ever—a breathtaking quest that will take them from ancient tunnels in Ecuador that span the breadth of South America to a millennia-old necropolis holding the bones of our ancestors. Along the way, revelations involving the lost continent of Atlantis will reveal true mysteries tied to mankind’s first steps on the moon. In the end, Gray Pierce and his team will face to their greatest threat: an ancient evil, resurrected by modern genetic science, strong enough to bring about the end of man’s dominance on this planet.\r\n\r\nOnly this time, Sigma will falter—and the world we know will change forever', 'James Rollins', 4, 'https://images.gr-assets.com/books/1431761078l/23434061.jpg'),
(12, 2, 'The Eye of God', 'The crash of a U.S. military research satellite in the remote wilds of Mongolia triggers an explosive search for the valuable cargo it holds: a code-black physics project connected to the study of dark energy, the energy connected to the birth of our universe. But the last blurry image from the falling satellite captures a chilling sight: a frightening look into the future, a view of a smoldering eastern seaboard of the United States in utter ruin.\r\nAt the Vatican, a mysterious package arrives for the head of Pontifical ancient studies, sent by a colleague who had vanished a decade earlier. It contains two strange artifacts: a skull scrawled with ancient Aramaic and a tome bound in human skin. DNA testing reveals both are from Genghis Khan — the long-dead Mongol king whose undiscovered tomb is rumored to hold the vast treasures and knowledge of a lost ancient empire.\r\n\r\nCommander Gray Pierce, and Sigma — joined by a pair of Vatican historians — race to uncover a truth tied to the fall of the Roman Empire, to a mystery bound in the roots of Christianity\'s origins, and to a weapon hidden for centuries that holds the fate of humanity', 'James Rollins ', 4, 'https://images.gr-assets.com/books/1359823174l/16065538.jpg'),
(13, 2, 'The Da Vinci Code', 'An ingenious code hidden in the works of Leonardo da Vinci.\r\n\r\nA desperate race through the cathedrals and castles of Europe.\r\n\r\nAn astonishing truth concealed for centuries . . . unveiled at last.\r\n\r\nWhile in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.\r\n\r\nEven more startling, the late curator was involved in the Priory of Sion—a secret society whose members included Sir Isaac Newton, Victor Hugo, and Da Vinci—and he guarded a breathtaking historical secret. Unless Langdon and Neveu can decipher the labyrinthine puzzle—while avoiding the faceless adversary who shadows their every move—the explosive, ancient truth will be lost forever.', 'Dan Brown', 4, 'https://images.gr-assets.com/books/1303252999l/968.jpg'),
(14, 2, 'Bloodline', 'New York Times bestselling author James Rollins takes you to the edge of modern medicine, genetics, and technology, revealing the next evolutionary leap forward: Immortality — a future conceived through the monstrous ingenuity of man...\r\nGalilee, 1025. A cunning Templar knight uncovers a holy treasure: the Bachal Isu — the staff of Jesus Christ — a priceless icon that holds a mysterious and terrifying power that will forever change humanity if unleashed.\r\nA millennium later, Somali pirates hijack a yacht off the coast off the Horn of Africa, kidnapping a young pregnant American woman and brutally killing her husband. Painter Crowe and his SIGMA team are enlisted for the top secret rescue mission. The kidnapped woman is Amanda Gant-Bennett, the daughter of U.S. president James Gant. Crowe is more than a little suspicious that the kidnapping masks a far more nefarious plot.\r\n\r\nIn the field, Commander Gray Pierce leads his small team of operatives into the treacherous African jungle to find the missing woman. But what should be a straightforward rescue turns into a fiery ambush and a deadly act of betrayal. As Commander Pierce and his team discover, the hostage is a pawn in a shattering act of terrorism with dark and shocking repercussions. And the danger is only beginning...', 'James Rollins', 4, 'https://images.gr-assets.com/books/1348523971l/13148921.jpg'),
(15, 2, 'Deep Fathom', 'Ex-Navy SEAL Jack Kirkland surfaces from an aborted underwater salvage mission to find Earth burning. Solar flares have triggered a series of gargantuan natural disasters. Earth-quakes and hellfire rock the globe. Air Force One has vanished from the skies with America\'s president on board.\r\n\r\nNow, with the United States on the narrow brink of a nuclear apocalypse, Kirkland must pilot his oceangoing exploration ship, Deep Fathom, on a desperate mission miles below the ocean\'s surface. There, devastating secrets await him--and a power an ancient civilization could not contain that has been cast out into modern day, where it will forever alter a world that\'s already racing toward its own destruction.', 'James Rollins', 4, 'https://images.gr-assets.com/books/1348924000l/294045.jpg'),
(16, 2, 'The Devil Colony', 'Deep in the Rocky Mountains, a gruesome discovery — hundreds of mummified bodies — stir international attention and fervent controversy. Despite doubts to the bodies’ origins, the local Native American Heritage Commission lays claim to the prehistoric remains, along with the strange artifacts found in the same cavern: gold plates inscribed with an unfathomable script.\r\nDuring a riot at the dig site, an anthropologist dies horribly: burned to ash in a fiery explosion in plain view of television cameras. All evidence points to a radical group of Native Americans, including one agitator, a teenage firebrand who escapes with a vital clue to the murder and calls on the one person who might help: her uncle, Painter Crowe, director of Sigma Force.\r\n\r\nTo protect his niece and uncover the truth, Painter will ignite a war across the nation’s most powerful intelligence agencies. Yet, an even greater threat looms as events in the Rocky Mountains have set in motion a frightening chain reaction, a geological meltdown that threatens the entire western half of the U.S.\r\n\r\nFrom the volcanic peaks of Iceland to the blistering deserts of the American Southwest, from the gold vaults of Fort Knox to the bubbling geysers of Yellowstone, Painter Crowe joins forces with Commander Gray Pierce to penetrate the shadowy heart of a dark cabal, one that has been manipulating American history since the founding of the thirteen colonies.\r\n\r\nBut can he discover the truth — one that could topple governments — before it destroys all he holds dear?', 'James Rollins', 4, 'https://images.gr-assets.com/books/1264522557l/7202829.jpg'),
(17, 2, 'The Judas Strain', 'From the depths of the Indian Ocean, a horrific plague has arisen to devastate humankind--a disease that\'s unknown, unstoppable . . . and deadly. But it is merely a harbinger of the doom that is to follow. Aboard a cruise liner transformed into a makeshift hospital, Dr. Lisa Cummings and Monk Kokkalis--operatives of SIGMA Force--search for answers to the bizarre affliction. But there are others with far less altruistic intentions. In a savage and sudden coup, terrorists hijack the vessel, turning a mercy ship into a floating bio-weapons lab.\r\n\r\nA world away, SIGMA\'s Commander Gray Pierce thwarts the murderous schemes of a beautiful would-be killer who holds the first clue to the discovery of a possible cure. Pierce joins forces with the woman who wanted him dead, and together they embark upon an astonishing quest following the trail of the most fabled explorer in history: Marco Polo. But time is an enemy as a worldwide pandemic grows rapidly out of control. As a relentless madman dogs their every step, Gray and his unlikely ally are being pulled into an astonishing mystery buried deep in antiquity and in humanity\'s genetic code. And as the seconds tick closer to doomsday, Gray Pierce will realize he can truly trust no one, for any one of them could be . . . a Judas.', 'James Rollins ', 4, 'https://images.gr-assets.com/books/1367267369l/294046.jpg'),
(18, 2, 'The Doomsday Key', 'James Rollins, the "New York Times" bestselling master of nail-biting suspense and historical mystery, combines cutting-edge biotechnology with a centuries-old secret in an apocalyptic story that reveals where humankind is truly headed\r\n\r\n"The Doomsday Key"\r\n\r\nAt Princeton University, a famed geneticist dies inside a biohazard lab. In Rome, a Vatican archaeologist is found dead in St. Peter\'s Basilica. In Africa, a U.S. senator\'s son is slain outside a Red Cross camp. The three murders on three continents bear a horrifying connection: all the victims are marked by a Druidic pagan cross burned into their flesh.\r\n\r\nThe bizarre murders thrust Commander Gray Pierce and Sigma Force into a race against time to solve a riddle going back centuries, to a ghastly crime against humanity hidden within a cryptic medieval codex. The first clue is discovered inside a mummified corpse buried in an English peat bog -- a gruesome secret that threatens America and the world.\r\n\r\nAided by two women from his past -- one his exlover, the other his new partner -- Gray must piece together the horrifying truth. But the revelations come at a high cost, and to save the future, Gray will have to sacrifice one of the women at his side. That alone might not be enough, as the true path to salvation is revealed in a dark prophecy of doom.\r\n\r\nSigma Force confronts humankind\'s greatest threat in an adventure that races from the Roman Coliseum to the icy peaks of Norway, from the ruins of medieval abbeys to the lost tombs of Celtic kings. The ultimate nightmare is locked within a talisman buried by a dead saint -- an ancient artifact known as the Doomsday Key.', 'James Rollins', 4, 'https://images.gr-assets.com/books/1340970015l/5171894.jpg'),
(19, 2, 'The Last Oracle', 'In Washington, D.C., a homeless man dies in Commander Gray Pierce\'s arms, shot by an assassin\'s bullet. But the death leaves behind a greater mystery: a bloody coin found clutched in the dead man\'s hand, an ancient relic that can be traced back to the Greek Oracle of Delphi. As ruthless hunters search for the stolen artifact, Gray Pierce discovers that the coin is the key to unlocking a plot that dates back to the Cold War and threatens the very foundation of humanity.\r\nAn international think tank of scientists known as the Jasons has discovered a way to bioengineer autistic children who show savant talents -- mathematical geniuses, statistical masterminds, brilliant conceptual artists -- into something far greater and far more "frightening," in hopes of creating a world prophet for the new millennium, one to be manipulated to create a new era of global peace... a peace on their own terms.\r\n\r\nHalfway around the world, a man wakes up in a hospital bed with no memory of who he is, knowing only that he\'s a prisoner in a subterranean research facility. With the help of three unusual children, he makes his escape across a mountainous and radioactive countryside, pursued by savage hunters bred in the same laboratory. But his goal is not escape, nor even survival. In order to thwart a plot to wipe out a quarter of the world\'s population, he must sacrifice all, even the children who rescued him.\r\n\r\nFrom ancient Greek temples to glittering mausoleums, from the slums of India to the toxic ruins of Russia, two men must race against time to solve a mystery that dates back to the first famous oracle of history -- the Greek Oracle of Delphi.\r\n\r\nBut one question remains: "Will the past be enough to save the future?"', 'James Rollins', 4, 'https://images.gr-assets.com/books/1367511748l/2277444.jpg'),
(20, 2, 'Red Rising', '"I live for the dream that my children will be born free," she says. "That they will be what they like. That they will own the land their father gave them."\r\n\r\n"I live for you," I say sadly.\r\n\r\nEo kisses my cheek. "Then you must live for more."\r\n\r\nDarrow is a Red, a member of the lowest caste in the color-coded society of the future. Like his fellow Reds, he works all day, believing that he and his people are making the surface of Mars livable for future generations.\r\n\r\nYet he spends his life willingly, knowing that his blood and sweat will one day result in a better world for his children.\r\n\r\nBut Darrow and his kind have been betrayed. Soon he discovers that humanity already reached the surface generations ago. Vast cities and sprawling parks spread across the planet. Darrow—and Reds like him—are nothing more than slaves to a decadent ruling class.\r\n\r\nInspired by a longing for justice, and driven by the memory of lost love, Darrow sacrifices everything to infiltrate the legendary Institute, a proving ground for the dominant Gold caste, where the next generation of humanity\'s overlords struggle for power. He will be forced to compete for his life and the very future of civilization against the best and most brutal of Society\'s ruling class. There, he will stop at nothing to bring down his enemies... even if it means he has to become one of them to do so.', 'Pierce Brown', 4, 'https://images.gr-assets.com/books/1461354651l/15839976.jpg'),
(21, 3, 'Hyperion', 'Dan SimmOn the world called Hyperion, beyond the law of the Hegemony of Man, there waits the creature called the Shrike. There are those who worship it. There are those who fear it. And there are those who have vowed to destroy it. In the Valley of the Time Tombs, where huge, brooding structures move backward through time, the Shrike waits for them all. On the eve of Armageddon, with the entire galaxy at war, seven pilgrims set forth on a final voyage to Hyperion seeking the answers to the unsolved riddles of their lives. Each carries a desperate hope—and a terrible secret. And one may hold the fate of humanity in his hands. \r\n\r\nA stunning tour de force filled with transcendent awe and wonder, Hyperion is a masterwork of science fiction that resonates with excitement and invention, the first volume in a remarkable new science fiction epic by the multiple-award-winning author of The Hollow Manons', 'Dan Simmons', 4, 'https://images.gr-assets.com/books/1405546838l/77566.jpg'),
(22, 3, 'I, Robot', 'The three laws of Robotics:\r\n1) A robot may not injure a human being or, through inaction, allow a human being to come to harm.\r\n2) A robot must obey orders given to it by human beings except where such orders would conflict with the First Law.\r\n3) A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.\r\n\r\nWith these three, simple directives, Isaac Asimov changed our perception of robots forever when he formulated the laws governing their behavior. In I, Robot, Asimov chronicles the development of the robot through a series of interlinked stories: from its primitive origins in the present to its ultimate perfection in the not-so-distant future--a future in which humanity itself may be rendered obsolete.\r\n\r\nHere are stories of robots gone mad, of mind-read robots, and robots with a sense of humor. Of robot politicians, and robots who secretly run the world--all told with the dramatic blend of science fact and science fiction that has become Asimov\'s trademark', 'Isaac Asimov', 4, 'https://images.gr-assets.com/books/1388321463l/41804.jpg'),
(23, 3, 'Brave New World', 'Far in the future, the World Controllers have created the ideal society. Through clever use of genetic engineering, brainwashing and recreational sex and drugs, all its members are happy consumers. Bernard Marx seems alone harbouring an ill-defined longing to break free. A visit to one of the few remaining Savage Reservations, where the old, imperfect life still continues, may be the cure for his distress...\r\n\r\nHuxley\'s ingenious fantasy of the future sheds a blazing light on the present and is considered to be his most enduring masterpiece. ', 'Aldous Huxley', 4, 'https://images.gr-assets.com/books/1523061131l/5129.jpg'),
(24, 3, 'Foundation', 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying. But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into the future -- to a dark age of ignorance, barbarism, and warfare that will last thirty thousand years. To preserve knowledge and save mankind, Seldon gathers the best minds in the Empire -- both scientists and scholars -- and brings them to a bleak planet at the edge of the Galaxy to serve as a beacon of hope for a future generations. He calls his sanctuary the Foundation.\r\n\r\nBut soon the fledgling Foundation finds itself at the mercy of corrupt warlords rising in the wake of the receding Empire. Mankind\'s last best hope is faced with an agonizing choice: submit to the barbarians and be overrun -- or fight them and be destroyed', 'Isaac Asimov', 4, 'https://images.gr-assets.com/books/1417900846l/29579.jpg'),
(25, 3, 'Fahrenheit 451', 'Fahrenheit 451 ofrece la historia de un sombrío y horroroso futuro. Montag, el protagonista, pertenece a una extraña brigada de bomberos cuya misión, paradójicamente, no es la de sofocar incendios sino la de provocarlos, para quemar libros. Porque en el país de Montag está terminantemente prohibido leer. Porque leer obliga a pensar, y en el país de Montag esta prohibido pensar. Porque leer impide ser ingenuamente feliz, y en el país de Montag hay que ser feliz a la fuerza...', 'Ray Bradbury', 4, 'https://images.gr-assets.com/books/1351643740l/4381.jpg'),
(26, 3, '1984', 'Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell\'s nightmare vision of a totalitarian, bureaucratic world and one poor stiff\'s attempt to find individuality. The brilliance of the novel is Orwell\'s prescience of modern life--the ubiquity of television, the distortion of the language--and his ability to construct such a thorough version of hell. Required reading for students since it was published, it ranks among the most terrifying novels ever written. ', 'George Orwell', 4, 'https://images.gr-assets.com/books/1348990566l/5470.jpg'),
(27, 3, 'The Hitchhiker\'s Guide to the Galaxy', 'Seconds before the Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhiker\'s Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.\r\n\r\nTogether this dynamic pair begin a journey through space aided by quotes from The Hitchhiker\'s Guide ("A towel is about the most massively useful thing an interstellar hitchhiker can have") and a galaxy-full of fellow travelers: Zaphod Beeblebrox—the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian, Zaphod\'s girlfriend (formally Tricia McMillan), whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; Veet Voojagig, a former graduate student who is obsessed with the disappearance of all the ballpoint pens he bought over the years.', 'Douglas Adams', 4, 'https://images.gr-assets.com/books/1513003890l/11.jpg'),
(28, 3, 'Dune', 'Set in the far future amidst a sprawling feudal interstellar empire where planetary dynasties are controlled by noble houses that owe an allegiance to the imperial House Corrino, Dune tells the story of young Paul Atreides (the heir apparent to Duke Leto Atreides and heir of House Atreides) as he and his family accept control of the desert planet Arrakis, the only source of the \'spice\' melange, the most important and valuable substance in the cosmos. The story explores the complex, multi-layered interactions of politics, religion, ecology, technology, and human emotion as the forces of the empire confront each other for control of Arrakis.\r\n\r\nPublished in 1965, it won the Hugo Award in 1966 and the inaugural Nebula Award for Best Novel. Dune is frequently cited as the world\'s best-selling sf novel.', 'Frank Herbert', 4, 'https://images.gr-assets.com/books/1434908555l/234225.jpg'),
(29, 3, 'Ender\'s Game', 'Ender\'s Game is a 1985 military science fiction novel by American author Orson Scott Card. Set in Earth\'s future, the novel presents an imperiled mankind after two conflicts with the "buggers", an insectoid alien species. In preparation for an anticipated third invasion, children, including the novel\'s protagonist, Ender Wiggin, are trained from a very young age through increasingly difficult games including some in zero gravity, where Ender\'s tactical genius is revealed.', 'Orson Scott Card', 4, 'https://images.gr-assets.com/books/1408303130l/375802.jpg'),
(30, 3, 'Neuromancer', 'The Matrix is a world within the world, a global consensus- hallucination, the representation of every byte of data in cyberspace . . .\r\n\r\nCase had been the sharpest data-thief in the business, until vengeful former employers crippled his nervous system. But now a new and very mysterious employer recruits him for a last-chance run. The target: an unthinkably powerful artificial intelligence orbiting Earth in service of the sinister Tessier-Ashpool business clan. With a dead man riding shotgun and Molly, mirror-eyed street-samurai, to watch his back, Case embarks on an adventure that ups the ante on an entire genre of fiction.\r\n\r\nHotwired to the leading edges of art and technology, Neuromancer ranks with 1984 and Brave New World as one of the century\'s most potent visions of the future. ', 'William Gibson', 4, 'https://images.gr-assets.com/books/1167348726l/22328.jpg');



CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) 



CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) 


INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'home', 'books'),
(8, 'home', 'genres'),
(9, 'home', 'user'),
(10, 'home', 'userbook'),
(11, 'home', 'usercommentuser');



CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) 



INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-04-20 05:39:00.581562'),
(2, 'auth', '0001_initial', '2018-04-20 05:39:02.570974'),
(3, 'admin', '0001_initial', '2018-04-20 05:39:03.086339'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-04-20 05:39:03.117861'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-04-20 05:39:03.596701'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-04-20 05:39:03.684263'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-04-20 05:39:03.766321'),
(8, 'auth', '0004_alter_user_username_opts', '2018-04-20 05:39:03.806851'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-04-20 05:39:03.936945'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-04-20 05:39:03.948951'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-04-20 05:39:03.971466'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-04-20 05:39:04.060529'),
(13, 'sessions', '0001_initial', '2018-04-20 05:39:04.236655');



CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) 



INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f0uqsjpzwptj36etutx21vvos5znlbbl', 'ZmU3ZGE0N2NlNjgwMzA5NzAxYjA0YTIxYzgwNTcwZGI1Njk2ZjFhYjp7ImlkIjo0fQ==', '2018-05-04 09:23:04.075416');



CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre` varchar(100) NOT NULL
) 



INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'Romance'),
(2, 'Action Adventure'),
(3, 'Science Fiction');


CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) 


INSERT INTO `user` (`id`, `name`, `user_name`, `password`, `email`) VALUES
(4, 'sid', 'sid', 'sid', 'test@test.com');



CREATE TABLE `user_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `book` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL
) 


INSERT INTO `user_book` (`id`, `book`, `user`) VALUES
(4, 1, 4),
(5, 14, 4),
(6, 3, 4);


CREATE TABLE `user_comment_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `book` int(10) UNSIGNED NOT NULL,
  `comment` varchar(10000) NOT NULL
) 



INSERT INTO `user_comment_book` (`id`, `user`, `book`, `comment`) VALUES
(3, 4, 1, 'test'),
(4, 4, 1, 'hi'),
(5, 4, 3, 'ahgfs');


ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);


ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);


ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);


ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);


ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);


ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);


ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre`);


ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);


ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);


ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);


ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book` (`book`),
  ADD KEY `user` (`user`);


ALTER TABLE `user_comment_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `book` (`book`);


ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `user_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `user_comment_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `books`
  ADD CONSTRAINT `book_genre` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `user_book`
  ADD CONSTRAINT `books_` FOREIGN KEY (`book`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `user_comment_book`
  ADD CONSTRAINT `book_` FOREIGN KEY (`book`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_comment` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


