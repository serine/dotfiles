#!/bin/bash

# this is a copy from here
# took it from here https://github.com/smbache/praise

# adverbs
read -r -d '\s' PRAISE_ADVERBS <<EOF
beautifully
bellissimo
bigly
bravely
brightly
calmly
carefully
cautiously
cheerfully
clearly
correctly
courageously
daringly
deliberately
doubtfully
eagerly
easily
effectively
elegantly
enormously
enthusiastically
faithfully
fast
fondly
fortunately
frankly
frantically
generously
gently
gladly
gracefully
happily
healthily
honestly
joyously
justly
kindly
neatly
openly
patiently
perfectly
politely
powerfully
quickly
quietly
rapidly
really
regularly
repeatedly
rightfully
seriously
sharply
smoothly
speedily
successfully
swiftly
tenderly
thoughtfully
truthfully
trustfully
warmly
well
wisely
EOF

# adjectives
read -r -d '\s' PRAISE_ADJECTIVES <<EOF
ace
adorable
amazing
astonishing
astounding
awe-inspiring
awesome
baboosh
badass
beautiful
bedazzling
best
bravissimo
breathtaking
brightest
brilliant
charming
clever
chic
classy
clever
cool
crackin'
cute
dandy
dazzling
delicate
delicious
delightful
distinctive
divine
dope
elegant
epic
excellent
exclusive
exceptional
exciting
exquisite
extraordinary
fabulous
fancy
fantastic
fantabulosus
fantabulous
fascinating
fine
finest
first-class
first-rate
flawless
funkadelic
geometric
glorious
gnarly
good
good-looking
gorgeous
grand
great
groovy
groundbreaking
hip
hot
hunky-dory
impeccable
impressive
incredible
irresistible
just wow
kickass
kryptonian
laudable
legendary
lovely
luminous
magnificent
magnifique
majestic
marvelous
mathematical
metal
mind-blowing
nice
neat
nice
outstanding
particular
peachy
peculiar
perfect
phenomenal
pioneering
polished
posh
praiseworthy
premium
priceless
prime
primo
proper
rad
radical
remarkable
riveting
rockandroll
rockin
sensational
sharp
shining
slick
smart
smashing
solid
special
spectacular
spiffing
splendery-doodley
splendid
splendiferous
stellar
striking
stonking
stunning
stupefying
stupendous
stylish
sublime
supah
super
super-duper
super-excellent
super-good
superb
superior
supreme
sweet
sweetest
swell
terrific
tiptop
top-notch
transcendent
tremendous
tubular
ultimate
unique
unbelievable
unreal
well-made
wicked
wise
wonderful
wondrous
world-class
EOF

function randomline {
  NUM_OF_WORDS=$(echo $@ | wc -w )
  NUM=$((${RANDOM} % ${NUM_OF_WORDS} + 1))
  echo $@ | tr ' ' '\n' | head -${NUM} | tail -1
}

function _praise {
  ADVERB=$(randomline $PRAISE_ADVERBS)
  ADJECTIVE=$(randomline $PRAISE_ADJECTIVES)
  echo ""
  echo "  $(whoami), you are ${ADVERB} ${ADJECTIVE}!"
  echo ""
}

_praise

