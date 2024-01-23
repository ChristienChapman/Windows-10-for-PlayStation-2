-- All glory to God, Jesus Christ, and the Holy Spirit




public_wav = ""
public_artist = ""
public_song_name = ""
load_album_cover = Graphics.loadImage("System/buffer.png")
song_title_found = false


function getAlbumCover(wav, ret)

local n001 = "nirvana - "
local n002 = "michael jackson - "
local n003 = "billy idol - "
local n004 = "whitney houston - "
local n005 = "elton john - "


-- Nirvana - Nevermind

if string.lower(GetFileName(wav)) == n001 .. "smells like teen spirit.wav"
or string.lower(GetFileName(wav)) == n001 .. "breed.wav"
or string.lower(GetFileName(wav)) == n001 .. "lounge act.wav"
or string.lower(GetFileName(wav)) == n001 .. "come as you are.wav"
or string.lower(GetFileName(wav)) == n001 .. "drain you.wav"
or string.lower(GetFileName(wav)) == n001 .. "in bloom.wav"
or string.lower(GetFileName(wav)) == n001 .. "lithium.wav"
or string.lower(GetFileName(wav)) == n001 .. "stay away.wav"
or string.lower(GetFileName(wav)) == n001 .. "endless, nameless.wav"
or string.lower(GetFileName(wav)) == n001 .. "polly.wav"
or string.lower(GetFileName(wav)) == n001 .. "something in the way.wav"
or string.lower(GetFileName(wav)) == n001 .. "on a plain.wav"
or string.lower(GetFileName(wav)) == n001 .. "territorial pissings.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n001.jpg")
public_wav = wav
public_artist = "Nirvana"
public_song_name = string.sub(GetFileName(wav),11,-4)
songMode = ret
song_title_found = true








end 



-- Nirvana - In Utero

if string.lower(GetFileName(wav)) == n001 .. "scentless apprentice.wav"
or string.lower(GetFileName(wav)) == n001 .. "very ape.wav"
or string.lower(GetFileName(wav)) == n001 .. "heart-shaped box.wav"
or string.lower(GetFileName(wav)) == n001 .. "rape me.wav"
or string.lower(GetFileName(wav)) == n001 .. "radio friendly unit shifter.wav"
or string.lower(GetFileName(wav)) == n001 .. "frances farmer will have her revenge on seattle.wav"
or string.lower(GetFileName(wav)) == n001 .. "tourette's.wav"
or string.lower(GetFileName(wav)) == n001 .. "dumb.wav"
or string.lower(GetFileName(wav)) == n001 .. "milt it.wav"
or string.lower(GetFileName(wav)) == n001 .. "serve the servants.wav"
or string.lower(GetFileName(wav)) == n001 .. "all apologies.wav"
or string.lower(GetFileName(wav)) == n001 .. "pennyroyal tea.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n002.jpg")
public_wav = wav
public_artist = "Nirvana"
public_song_name = string.sub(GetFileName(wav),11,-4)
songMode = ret
song_title_found = true








end 






-- Michael Jackson - Thriller

if string.lower(GetFileName(wav)) == n002 .. "wanna be startin' somethin'.wav"
or string.lower(GetFileName(wav)) == n002 .. "wanne be startin somethin.wav"
or string.lower(GetFileName(wav)) == n002 .. "human nature.wav"
or string.lower(GetFileName(wav)) == n002 .. "pyt.wav"
or string.lower(GetFileName(wav)) == n002 .. "p.y.t.wav"
or string.lower(GetFileName(wav)) == n002 .. "pretty young thing.wav"
or string.lower(GetFileName(wav)) == n002 .. "thriller.wav"
or string.lower(GetFileName(wav)) == n002 .. "baby be mine.wav"
or string.lower(GetFileName(wav)) == n002 .. "the girl is mine.wav"
or string.lower(GetFileName(wav)) == n002 .. "beat it.wav"
or string.lower(GetFileName(wav)) == n002 .. "billie jean.wav"
or string.lower(GetFileName(wav)) == n002 .. "the lady in my life.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n003.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end









-- Michael Jackson - Off the Wall

if string.lower(GetFileName(wav)) == n002 .. "don't stop 'til you get enough.wav"
or string.lower(GetFileName(wav)) == n002 .. "dont stop til you get enough.wav"
or string.lower(GetFileName(wav)) == n002 .. "rock with you.wav"
or string.lower(GetFileName(wav)) == n002 .. "workin' day and night.wav"
or string.lower(GetFileName(wav)) == n002 .. "get on the floor.wav"
or string.lower(GetFileName(wav)) == n002 .. "off the wall.wav"
or string.lower(GetFileName(wav)) == n002 .. "girlfriend.wav"
or string.lower(GetFileName(wav)) == n002 .. "she's out of my life.wav"
or string.lower(GetFileName(wav)) == n002 .. "i can't help it.wav"
or string.lower(GetFileName(wav)) == n002 .. "it's the falling in love.wav"
or string.lower(GetFileName(wav)) == n002 .. "burn this disco out.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n004.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end






-- Michael Jackson - Bad

if string.lower(GetFileName(wav)) == n002 .. "bad.wav"
or string.lower(GetFileName(wav)) == n002 .. "the way you make me feel.wav"
or string.lower(GetFileName(wav)) == n002 .. "speed demon.wav"
or string.lower(GetFileName(wav)) == n002 .. "liberian girl.wav"
or string.lower(GetFileName(wav)) == n002 .. "just good friends.wav"
or string.lower(GetFileName(wav)) == n002 .. "another part of me.wav"
or string.lower(GetFileName(wav)) == n002 .. "man in the mirror.wav"
or string.lower(GetFileName(wav)) == n002 .. "i just can't stop loving you.wav"
or string.lower(GetFileName(wav)) == n002 .. "dirty diana.wav"
or string.lower(GetFileName(wav)) == n002 .. "smooth criminal.wav"
or string.lower(GetFileName(wav)) == n002 .. "leave me alone.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n005.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end















-- Michael Jackson - Dangerous

if string.lower(GetFileName(wav)) == n002 .. "jam.wav"
or string.lower(GetFileName(wav)) == n002 .. "why you wanna trip on me.wav"
or string.lower(GetFileName(wav)) == n002 .. "in the closet.wav"
or string.lower(GetFileName(wav)) == n002 .. "she drives me wild.wav"
or string.lower(GetFileName(wav)) == n002 .. "remember the time.wav"
or string.lower(GetFileName(wav)) == n002 .. "can't let her get away.wav"
or string.lower(GetFileName(wav)) == n002 .. "heal the world.wav"
or string.lower(GetFileName(wav)) == n002 .. "black or white.wav"
or string.lower(GetFileName(wav)) == n002 .. "who is it.wav"
or string.lower(GetFileName(wav)) == n002 .. "give in to me.wav"
or string.lower(GetFileName(wav)) == n002 .. "will you be there.wav"
or string.lower(GetFileName(wav)) == n002 .. "keep the faith.wav"
or string.lower(GetFileName(wav)) == n002 .. "gone too soon.wav"
or string.lower(GetFileName(wav)) == n002 .. "dangerous.wav"
 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n006.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end







-- Michael Jackson - History

if string.lower(GetFileName(wav)) == n002 .. "scream.wav"
or string.lower(GetFileName(wav)) == n002 .. "they don't care about us.wav"
or string.lower(GetFileName(wav)) == n002 .. "stranger in moscow.wav"
or string.lower(GetFileName(wav)) == n002 .. "earth song.wav"
or string.lower(GetFileName(wav)) == n002 .. "this time around.wav"
or string.lower(GetFileName(wav)) == n002 .. "d.s..wav"
or string.lower(GetFileName(wav)) == n002 .. "money.wav"
or string.lower(GetFileName(wav)) == n002 .. "come together.wav"
or string.lower(GetFileName(wav)) == n002 .. "you are not alone.wav"
or string.lower(GetFileName(wav)) == n002 .. "childhood.wav"
or string.lower(GetFileName(wav)) == n002 .. "tabloid junkie.wav"
or string.lower(GetFileName(wav)) == n002 .. "2 bad.wav"
or string.lower(GetFileName(wav)) == n002 .. "history.wav"
or string.lower(GetFileName(wav)) == n002 .. "little susie.wav"
or string.lower(GetFileName(wav)) == n002 .. "smile.wav"

 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n007.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end











-- Michael Jackson - Blood on the Dance Floor

if string.lower(GetFileName(wav)) == n002 .. "blood on the dance floor.wav"
or string.lower(GetFileName(wav)) == n002 .. "morphine.wav"
or string.lower(GetFileName(wav)) == n002 .. "superfly sister.wav"
or string.lower(GetFileName(wav)) == n002 .. "ghosts.wav"
or string.lower(GetFileName(wav)) == n002 .. "is it scary.wav"

 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n008.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end










-- Michael Jackson - Invincible

if string.lower(GetFileName(wav)) == n002 .. "unbreakable.wav"
or string.lower(GetFileName(wav)) == n002 .. "heartbreaker.wav"
or string.lower(GetFileName(wav)) == n002 .. "invincible.wav"
or string.lower(GetFileName(wav)) == n002 .. "break of dawn.wav"
or string.lower(GetFileName(wav)) == n002 .. "heaven can wait.wav"
or string.lower(GetFileName(wav)) == n002 .. "you rock my world.wav"
or string.lower(GetFileName(wav)) == n002 .. "butterflies.wav"
or string.lower(GetFileName(wav)) == n002 .. "speechless.wav"
or string.lower(GetFileName(wav)) == n002 .. "2000 watts.wav"
or string.lower(GetFileName(wav)) == n002 .. "you are my life.wav"
or string.lower(GetFileName(wav)) == n002 .. "privacy.wav"
or string.lower(GetFileName(wav)) == n002 .. "don't walk away.wav"
or string.lower(GetFileName(wav)) == n002 .. "cry.wav"
or string.lower(GetFileName(wav)) == n002 .. "the lost children.wav"
or string.lower(GetFileName(wav)) == n002 .. "whatever happens.wav"
or string.lower(GetFileName(wav)) == n002 .. "threatened.wav"

 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n009.jpg")
public_wav = wav
public_artist = "Michael Jackson"
public_song_name = string.sub(GetFileName(wav),19,-4)
songMode = ret
song_title_found = true









end









-- Billy Idol - Billy Idol

if string.lower(GetFileName(wav)) == n003 .. "come on, come on.wav"
or string.lower(GetFileName(wav)) == n003 .. "white wedding.wav"
or string.lower(GetFileName(wav)) == n003 .. "hot in the city.wav"
or string.lower(GetFileName(wav)) == n003 .. "dead on arrival.wav"
or string.lower(GetFileName(wav)) == n003 .. "nobody's business.wav"
or string.lower(GetFileName(wav)) == n003 .. "love calling.wav"
or string.lower(GetFileName(wav)) == n003 .. "hole in the wall.wav"
or string.lower(GetFileName(wav)) == n003 .. "shooting stars.wav"
or string.lower(GetFileName(wav)) == n003 .. "it's so cruel.wav"
or string.lower(GetFileName(wav)) == n003 .. "congo man.wav"
or string.lower(GetFileName(wav)) == n003 .. "dancing with myself.wav"


 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n010.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end









-- Billy Idol - Rebel Yell

if string.lower(GetFileName(wav)) == n003 .. "rebel yell.wav"
or string.lower(GetFileName(wav)) == n003 .. "daytime drama.wav"
or string.lower(GetFileName(wav)) == n003 .. "eyes without a face.wav"
or string.lower(GetFileName(wav)) == n003 .. "blue highway.wav"
or string.lower(GetFileName(wav)) == n003 .. "flesh for fantasy.wav"
or string.lower(GetFileName(wav)) == n003 .. "catch my fall.wav"
or string.lower(GetFileName(wav)) == n003 .. "crank call.wav"
or string.lower(GetFileName(wav)) == n003 .. "do not stand in the shadows.wav"
or string.lower(GetFileName(wav)) == n003 .. "(do not) stand in the shadows.wav"
or string.lower(GetFileName(wav)) == n003 .. "the dead next door.wav"


 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n011.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end






-- Billy Idol - Whiplash Smile

if string.lower(GetFileName(wav)) == n003 .. "worlds forgotten boy.wav"
or string.lower(GetFileName(wav)) == n003 .. "to be a lover.wav"
or string.lower(GetFileName(wav)) == n003 .. "soul standing by.wav"
or string.lower(GetFileName(wav)) == n003 .. "sweet sixteen.wav"
or string.lower(GetFileName(wav)) == n003 .. "man for all seasons.wav"
or string.lower(GetFileName(wav)) == n003 .. "don't need a gun.wav"
or string.lower(GetFileName(wav)) == n003 .. "beyond belief.wav"
or string.lower(GetFileName(wav)) == n003 .. "fatal charm.wav"
or string.lower(GetFileName(wav)) == n003 .. "all summer single.wav"
or string.lower(GetFileName(wav)) == n003 .. "one night, one chance.wav"


 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n012.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end







-- Billy Idol - Charmeed Life

if string.lower(GetFileName(wav)) == n003 .. "the loveless.wav"
or string.lower(GetFileName(wav)) == n003 .. "pumping on steel.wav"
or string.lower(GetFileName(wav)) == n003 .. "prodigal blues.wav"
or string.lower(GetFileName(wav)) == n003 .. "l.a. woman.wav"
or string.lower(GetFileName(wav)) == n003 .. "trouble with the sweet stuff.wav"
or string.lower(GetFileName(wav)) == n003 .. "cradle of love.wav"
or string.lower(GetFileName(wav)) == n003 .. "mark of caine.wav"
or string.lower(GetFileName(wav)) == n003 .. "endless sleep.wav"
or string.lower(GetFileName(wav)) == n003 .. "love unchained.wav"
or string.lower(GetFileName(wav)) == n003 .. "the right way.wav"
or string.lower(GetFileName(wav)) == n003 .. "license to thrill.wav"


 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n013.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end








-- Billy Idol - Cyberpunk

if string.lower(GetFileName(wav)) == n003 .. "wasteland.wav"
or string.lower(GetFileName(wav)) == n003 .. "shock to the system.wav"
or string.lower(GetFileName(wav)) == n003 .. "tomorrow people.wav"
or string.lower(GetFileName(wav)) == n003 .. "adam in chains.wav"
or string.lower(GetFileName(wav)) == n003 .. "neuromancer.wav"
or string.lower(GetFileName(wav)) == n003 .. "power junkie.wav"
or string.lower(GetFileName(wav)) == n003 .. "love labours on.wav"
or string.lower(GetFileName(wav)) == n003 .. "heroin.wav"
or string.lower(GetFileName(wav)) == n003 .. "shangrila.wav"
or string.lower(GetFileName(wav)) == n003 .. "concrete kingdom.wav"
or string.lower(GetFileName(wav)) == n003 .. "venus.wav"
or string.lower(GetFileName(wav)) == n003 .. "then the night comes.wav"
or string.lower(GetFileName(wav)) == n003 .. "mother dawn.wav"



 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n014.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end








-- Billy Idol - Devil's Playground

if string.lower(GetFileName(wav)) == n003 .. "super overdrive.wav"
or string.lower(GetFileName(wav)) == n003 .. "world comin' down.wav"
or string.lower(GetFileName(wav)) == n003 .. "rat race.wav"
or string.lower(GetFileName(wav)) == n003 .. "sherri.wav"
or string.lower(GetFileName(wav)) == n003 .. "plastic jesus.wav"
or string.lower(GetFileName(wav)) == n003 .. "scream.wav"
or string.lower(GetFileName(wav)) == n003 .. "yellin' at the xmas tree.wav"
or string.lower(GetFileName(wav)) == n003 .. "romeo's waiting.wav"
or string.lower(GetFileName(wav)) == n003 .. "evil eye.wav"
or string.lower(GetFileName(wav)) == n003 .. "lady do or die.wav"
or string.lower(GetFileName(wav)) == n003 .. "cherie.wav"
or string.lower(GetFileName(wav)) == n003 .. "summer running.wav"
or string.lower(GetFileName(wav)) == n003 .. "bleeding me insane.wav"



 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n015.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end








-- Billy Idol - Kings and Queens of the Underground

if string.lower(GetFileName(wav)) == n003 .. "bitter pill.wav"
or string.lower(GetFileName(wav)) == n003 .. "can't break me down.wav"
or string.lower(GetFileName(wav)) == n003 .. "save me now.wav"
or string.lower(GetFileName(wav)) == n003 .. "one breath away.wav"
or string.lower(GetFileName(wav)) == n003 .. "postcards from the past.wav"
or string.lower(GetFileName(wav)) == n003 .. "kings and queens of the underground.wav"
or string.lower(GetFileName(wav)) == n003 .. "eyes wide shut.wav"
or string.lower(GetFileName(wav)) == n003 .. "ghosts in my guitar.wav"
or string.lower(GetFileName(wav)) == n003 .. "nothing to fear.wav"
or string.lower(GetFileName(wav)) == n003 .. "love and glory.wav"
or string.lower(GetFileName(wav)) == n003 .. "whiskey and pills.wav"
or string.lower(GetFileName(wav)) == n003 .. "hollywood promises.wav"




 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n016.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end











-- Billy Idol - The Roadside

if string.lower(GetFileName(wav)) == n003 .. "rita hayworth.wav"
or string.lower(GetFileName(wav)) == n003 .. "bitter taste.wav"
or string.lower(GetFileName(wav)) == n003 .. "u don't have to kiss me like that.wav"
or string.lower(GetFileName(wav)) == n003 .. "baby put your clothes back on.wav"



 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n017.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end





-- Billy Idol - The Cage

if string.lower(GetFileName(wav)) == n003 .. "cage.wav"
or string.lower(GetFileName(wav)) == n003 .. "running from the ghost.wav"
or string.lower(GetFileName(wav)) == n003 .. "rebel like you.wav"
or string.lower(GetFileName(wav)) == n003 .. "miss nobody.wav"



 then



load_album_cover = Graphics.loadImage("System/Windows10/System32/album_covers/n050.jpg")
public_wav = wav
public_artist = "Billy Idol"
public_song_name = string.sub(GetFileName(wav),14,-4)
songMode = ret
song_title_found = true









end
















end 




