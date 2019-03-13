
/*  Elaine. Hybrid synthesizer designed and coded by Daniel Lázaro Cayuso  */
/*                   Technical University of Madrid                        */
/*  
    
    Copyright (C) Feb 2019. Daniel Lázaro Cayuso
    
    Elaine.csd is part of Elaine
    
    Elaine is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
    
    Contact Info: @drlazzz
*/

<Cabbage> bounds(0, 0, 0, 0)
form caption("Elaine") size(1037, 565), colour(50, 50, 50), pluginid("Elaine")

keyboard bounds(8, 478, 1022, 80)
#define RSlider #colour(106, 106, 106, 255), imgfile("Background", "SVG\knob4back.svg")#
label bounds(752, 464, 278, 10), text("Designed and coded by Daniel Lázaro (Info: @drlazzz) 2019"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)



;--------------------------------------------------------- MODULO PRINCIPAL ---------------------------------------------------------





image bounds(842, 322, 188, 138), plant("MAINVOICES"), colour(0, 0, 0, 0), , outlinethickness(1),  {
nslider bounds(160, 18, 20, 20),  channel("Voices"), range(0, 20, 0, 1, 1), increment(1), velocity(50)
}
image bounds(842, 322, 188, 138), plant("MAIN"), colour(0, 0, 0, 0), , outlinethickness(1),  {
label bounds(4, 4, 50, 13), text("MAIN"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
image bounds(169, 4, 10, 10), corners(2), identchannel("MIDI_ID"), colour(20, 20, 20, 255)
label bounds(138, 4, 30, 10), text("Midi")
label bounds(132, 21, 30, 10), text("Inst")
label bounds(139, 38, 40, 10), text("Max 20")

label bounds(162, 54, 20, 8), text("dBFS")
label bounds(167, 66, 10, 10), text("0")
label bounds(165, 78, 10, 10), text("-6")
label bounds(161, 89, 20, 10), text("-15")
label bounds(161, 101, 20, 10), text("-30")
label bounds(161, 113, 20, 10), text("-60")

image bounds(133, 60, 10, 10), corners(2), identchannel("RMS_R1_ID"), colour(20, 20, 20, 255)
image bounds(133, 72, 10, 10), corners(2), identchannel("RMS_R2_ID"), colour(20, 20, 20, 255)
image bounds(133, 84, 10, 10), corners(2), identchannel("RMS_R3_ID"), colour(20, 20, 20, 255)
image bounds(133, 96, 10, 10), corners(2), identchannel("RMS_R4_ID"), colour(20, 20, 20, 255)
image bounds(133, 108, 10, 10), corners(2), identchannel("RMS_R5_ID"), colour(20, 20, 20, 255)

image bounds(147, 60, 10, 10), corners(2), identchannel("RMS_L1_ID"), colour(20, 20, 20, 200)
image bounds(147, 72, 10, 10), corners(2), identchannel("RMS_L2_ID"), colour(20, 20, 20, 200)
image bounds(147, 84, 10, 10), corners(2), identchannel("RMS_L3_ID"), colour(20, 20, 20, 200)
image bounds(147, 96, 10, 10), corners(2), identchannel("RMS_L4_ID"), colour(20, 20, 20, 200)
image bounds(147, 108, 10, 10), corners(2), identchannel("RMS_L5_ID"), colour(20, 20, 20, 200)

rslider bounds(8, 22, 25, 25), channel("MainGain"), range(-12, 24, 0, 1, 0.05), $RSlider imgfile("Background", "SVG\knob4back.svg") increment(0.05)
rslider bounds(38, 22, 25, 25), channel("MainAMix"),  range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.5)
rslider bounds(68, 22, 25, 25), channel("MainBMix"),  range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.5)
rslider bounds(98, 22, 25, 25), channel("MainCMix"),  range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.5)
combobox bounds(64, 70, 65, 19), channel("MainPresets"), populate("*.snaps")
filebutton bounds(93, 92, 36, 15), channel("SaveButton"), text("Save", "Save"), mode("snapshot")

label bounds(8, 80, 50, 10), text("REVERB"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(36, 50, 28, 8), text("A Mix")
label bounds(66, 50, 28, 8), text("B Mix")
label bounds(94, 50, 35, 8), text("ADD Mix")
label bounds(8, 50, 25, 8), text("Gain")
label bounds(134, 122, 8, 8), text("R")
label bounds(148, 122, 8, 8), text("L")

rslider bounds(8, 94, 25, 25), channel("RvbAmt"),  range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), increment(0.01)
rslider bounds(36, 94, 25, 25), channel("RvbFeedb"),  range(0, 1, 0.6, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), increment(0.01) value(0.6)
rslider bounds(64, 94, 25, 25), channel("RvbFilt"),  range(0, 1, 0.5, 1, 0.05), imgfile("Background", "SVG\knob4back.svg"), increment(0.05) value(0.5)
label bounds(8, 122, 28, 8), text("Amt")
label bounds(36, 122, 23, 8), text("Fdb")
label bounds(62, 122, 30, 8), text("Cutoff")

}






;--------------------------------------------------------- MODULO SINTESIS ADITIVA ---------------------------------------------------------





image bounds(768, 158, 262, 160), plant("ADDITIVE_MODULE"), colour(0, 0, 0, 0), identchannel("ADD_GROUP1"), outlinethickness(1),  {
label bounds(2, 4, 126, 13), text("ADDITIVE MODULE"), fontcolour(152, 165, 171, 255)

label bounds(19, 143, 30, 10), text("Level")
label bounds(56, 143, 30, 10), text("FRatio")
label bounds(103, 141, 12, 12), text("A")
label bounds(127, 141, 12, 12), text("D")
label bounds(157, 141, 12, 12), text("S")
label bounds(183, 141, 12, 12), text("R")

label bounds(3, 27, 12, 12), text("1")
label bounds(3, 57, 12, 12), text("2")
label bounds(3, 87, 12, 12), text("3")
label bounds(3, 117, 12, 12), text("4")
label bounds(62, 40, 20, 11), text("Oct")

rslider bounds(20, 20, 29, 29), channel("Add1lev"),  range(0, 1, 0.7, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) increment(0.05) value(0.7)
rslider bounds(62, 20, 20, 20), channel("Add1Oct"), range(-3, 3, 0, 1, 1), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(94, 22, 25, 25), channel("Add1A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), 
rslider bounds(122, 22, 25, 25), channel("Add1D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 22, 25, 25), channel("Add1S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 22, 25, 25), channel("Add1R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

rslider bounds(20, 50, 29, 29), channel("Add2lev"),  range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 52, 25, 25), channel("Add2A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 52, 25, 25), channel("Add2D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 52, 25, 25), channel("Add2S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 52, 25, 25), channel("Add2R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

rslider bounds(20, 80, 29, 29), channel("Add3lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 82, 25, 25), channel("Add3A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 82, 25, 25), channel("Add3D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 82, 25, 25), channel("Add3S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 82, 25, 25), channel("Add3R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"),

rslider bounds(20, 110, 29, 29), channel("Add4lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 112, 25, 25), channel("Add4A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 112, 25, 25), channel("Add4D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 112, 25, 25), channel("Add4S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 112, 25, 25), channel("Add4R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

}
image bounds(768, 158, 262, 160), plant("ADDITIVE_GROUP2"), colour(0, 0, 0, 0), identchannel("ADD_GROUP2"), outlinethickness(1),visible(0)  {
label bounds(2, 4, 126, 13), text("ADDITIVE MODULE"), fontcolour(152, 165, 171, 255)

label bounds(19, 143, 30, 10), text("Level")
label bounds(56, 143, 30, 10), text("FRatio")
label bounds(103, 141, 12, 12), text("A")
label bounds(127, 141, 12, 12), text("D")
label bounds(157, 141, 12, 12), text("S")
label bounds(183, 141, 12, 12), text("R")

label bounds(3, 27, 12, 12), text("5")
label bounds(3, 57, 12, 12), text("6")
label bounds(3, 87, 12, 12), text("7")
label bounds(3, 117, 12, 12), text("8")
  
rslider bounds(20, 20, 29, 29), channel("Add5lev"),  range(0, 1, 0.7, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) increment(0.05) value(0.7)

rslider bounds(94, 22, 25, 25), channel("Add5A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), 
rslider bounds(122, 22, 25, 25), channel("Add5D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 22, 25, 25), channel("Add5S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 22, 25, 25), channel("Add5R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

rslider bounds(20, 50, 29, 29), channel("Add6lev"),  range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 52, 25, 25), channel("Add6A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 52, 25, 25), channel("Add6D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 52, 25, 25), channel("Add6S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 52, 25, 25), channel("Add6R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

rslider bounds(20, 80, 29, 29), channel("Add7lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 82, 25, 25), channel("Add7A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 82, 25, 25), channel("Add7D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 82, 25, 25), channel("Add7S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 82, 25, 25), channel("Add7R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"),

rslider bounds(20, 110, 29, 29), channel("Add8lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 112, 25, 25), channel("Add8A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(122, 112, 25, 25), channel("Add8D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(150, 112, 25, 25), channel("Add8S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")
rslider bounds(178, 112, 25, 25), channel("Add8R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg")

}
    
    
image bounds(768, 158, 262, 160), plant("ADDITIVE_GROUP3"), colour(0, 0, 0, 0), identchannel("ADD_GROUP3"), outlinethickness(1),visible(0)  {

label bounds(2, 4, 126, 13), text("ADDITIVE MODULE"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(19, 143, 30, 10), text("Level")
label bounds(56, 143, 30, 10), text("FRatio")
label bounds(103, 141, 12, 12), text("A")
label bounds(127, 141, 12, 12), text("D")
label bounds(157, 141, 12, 12), text("S")
label bounds(183, 141, 12, 12), text("R")

label bounds(3, 27, 15, 12), text("9")
label bounds(3, 57, 15, 12), text("10")
label bounds(3, 87, 15, 12), text("11")
label bounds(3, 117, 15, 12), text("12")
  
rslider bounds(20, 20, 29, 29), channel("Add9lev"),  range(0, 1, 0.7, 1, 0.05), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)  value(0.7)

rslider bounds(94, 22, 25, 25), channel("Add9A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), value(0.002)
rslider bounds(122, 22, 25, 25), channel("Add9D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.4)
rslider bounds(150, 22, 25, 25), channel("Add9S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(1)
rslider bounds(178, 22, 25, 25), channel("Add9R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.3)

rslider bounds(20, 50, 29, 29), channel("Add10lev"),  range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 52, 25, 25), channel("Add10A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.002)
rslider bounds(122, 52, 25, 25), channel("Add10D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.4)
rslider bounds(150, 52, 25, 25), channel("Add10S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(1)
rslider bounds(178, 52, 25, 25), channel("Add10R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.3)

rslider bounds(20, 80, 29, 29), channel("Add11lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 82, 25, 25), channel("Add11A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.002)
rslider bounds(122, 82, 25, 25), channel("Add11D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.4)
rslider bounds(150, 82, 25, 25), channel("Add11S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(1)
rslider bounds(178, 82, 25, 25), channel("Add11R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), value(0.3)

rslider bounds(20, 110, 29, 29), channel("Add12lev"), range(0, 1, 0, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255)

rslider bounds(94, 112, 25, 25), channel("Add12A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.002)
rslider bounds(122, 112, 25, 25), channel("Add12D"), range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.4)
rslider bounds(150, 112, 25, 25), channel("Add12S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(1)
rslider bounds(178, 112, 25, 25), channel("Add12R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg") value(0.3)

}
}
button bounds(910, 160, 20, 11), active(1), channel("AddAct"), colour:1(90, 185, 87, 255),colour:0(0, 0, 0, 0), text("On")
button bounds(930, 160, 16, 13), , channel("AddButton1"), colour:1(0, 0, 0, 0),colour:0(0, 0, 0, 0), text("1", "1")
button bounds(946, 160, 16, 13), active(1), channel("AddButton2"), colour:1(0, 0, 0, 0),colour:0(0, 0, 0, 0), text("2")
button bounds(962, 160, 16, 13), active(1), channel("AddButton3"), colour:1(0, 0, 0, 0),colour:0(0, 0, 0, 0), text("3")

rslider bounds(980, 178, 28, 28), channel("AddGain"),  range(-12, 12, 0, 1, 0.05), colour(255, 255, 255, 255), imgfile("Background", "SVG\knob4back.svg") increment(0.05)
label bounds(979, 207, 30, 10), text("Gain")
nslider bounds(820, 216, 38, 14), channel("Add2Ratio"), identchannel("ADD2_RATIO"),  range(0, 36, 2, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50) value(2)
nslider bounds(820, 246, 38, 14), channel("Add3Ratio"), identchannel("ADD3_RATIO"),  range(0, 36, 3, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50) value(3)
nslider bounds(820, 276, 38, 14), channel("Add4Ratio"), identchannel("ADD4_RATIO"),  range(0, 36, 4, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50) value(4)

nslider bounds(820, 186, 38, 14), channel("Add5Ratio"), identchannel("ADD5_RATIO"),  range(0, 36, 1, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0)
nslider bounds(820, 216, 38, 14), channel("Add6Ratio"), identchannel("ADD6_RATIO"),  range(0, 36, 2, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0)
nslider bounds(820, 246, 38, 14), channel("Add7Ratio"), identchannel("ADD7_RATIO"),  range(0, 36, 3, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0)
nslider bounds(820, 276, 38, 14), channel("Add8Ratio"), identchannel("ADD8_RATIO"),  range(0, 36, 4, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0)

nslider bounds(820, 186, 38, 14), channel("Add9Ratio"), identchannel("ADD9_RATIO"),  range(0, 36, 12, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0) value(12)
nslider bounds(820, 216, 38, 14), channel("Add10Ratio"), identchannel("ADD10_RATIO"),  range(0, 36, 2, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0)
nslider bounds(820, 246, 38, 14), channel("Add11Ratio"), identchannel("ADD11_RATIO"),  range(0, 36, 3, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0) value(3)
nslider bounds(820, 276, 38, 14), channel("Add12Ratio"), identchannel("ADD12_RATIO"),  range(0, 36, 4, 1, 0.01), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255),velocity(50),visible(0) value(4)





;--------------------------------------------------------- MODULO ARPEGIADOR ---------------------------------------------------------





image bounds(500, 158, 265, 180), plant("ARPEGGIATOR"), colour(0, 0, 0, 0), , outlinethickness(1),  {
label bounds(4, 4, 99, 13), text("ARPEGGIATOR"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
button bounds(103, 5, 20, 11), , channel("ArpeggiatorAct"), text("On", "On"), colour:1(90, 185, 87, 255)
button bounds(122, 5, 25, 11), , channel("ArpHold"), text("Hold", "Hold"), colour:1(90, 185, 87, 255)

rslider bounds(186, 14, 29, 29), channel("ArpRate"),range(1, 10, 4, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(4)
rslider bounds(222, 14, 29, 29), channel("ArpGate"),range(0.01, 1, 0.7, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.01) value(0.7)
label bounds(184, 42, 30, 10), text("Rate"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(222, 42, 30, 10), text("Gate"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(4, 38, 48, 10), text("Direction"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(68, 38, 30, 10), text("Steps"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(106, 38, 50, 10), text("Oct Range"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

combobox bounds(4, 50, 56, 17), channel("ArpDirection"), text("Up", "Down", "Up+Down")
combobox bounds(68, 50, 35, 17), channel("ArpSteps"), text("1", "2", "3", "4", "5", "6", "7", "8")
combobox bounds(106, 50, 35, 17), channel("ArpOctRange"), text("1", "1..2", "1..2..3")

label bounds(4, 140, 30, 8), text("Vel 1"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(36, 140, 30, 8), text("Vel 2"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(68, 140, 30, 8), text("Vel 3"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(100, 140, 30, 8), text("Vel 4"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(132, 140, 30, 8), text("Vel 5"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(164, 140, 30, 8), text("Vel 6"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(196, 140, 30, 8), text("Vel 7"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(228, 140, 30, 8), text("Vel 8"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(0, 100, 36, 8), text("Pch 1"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(32, 100, 36, 8), text("Pch 2"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(64, 100, 36, 8), text("Pch 3"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(96, 100, 36, 8), text("Pch 4"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(128, 100, 36, 8), text("Pch 5"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(160, 100, 36, 8), text("Pch 6"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(194, 100, 36, 8), text("Pch 7"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(226, 100, 36, 8), text("Pch 8"),fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

rslider bounds(4, 112, 29, 29), channel("ArpVelKnob1"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(36, 112, 29, 29), channel("ArpVelKnob2"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(68, 112, 29, 29), channel("ArpVelKnob3"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(100, 112, 29, 29), channel("ArpVelKnob4"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(132, 112, 29, 29), channel("ArpVelKnob5"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(164, 112, 29, 29), channel("ArpVelKnob6"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(196, 112, 29, 29), channel("ArpVelKnob7"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)
rslider bounds(228, 112, 29, 29), channel("ArpVelKnob8"),range(0, 1, 1, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1) value(1)

rslider bounds(4, 72, 29, 29), channel("ArpPitchKnob1"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(36, 72, 29, 29), channel("ArpPitchKnob2"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(68, 72, 29, 29), channel("ArpPitchKnob3"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(100, 72, 29, 29), channel("ArpPitchKnob4"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(132, 72, 29, 29), channel("ArpPitchKnob5"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(164, 72, 29, 29), channel("ArpPitchKnob6"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(196, 72, 29, 29), channel("ArpPitchKnob7"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)
rslider bounds(228, 72, 29, 29), channel("ArpPitchKnob8"),range(-12, 12, 0, 1, 0.1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.1)

image bounds(11, 156, 13, 13), corners(2), identchannel("ArpLight1"), colour(20, 20, 20, 255)
image bounds(43, 156, 13, 13), corners(2), identchannel("ArpLight2"), colour(20, 20, 20, 255)
image bounds(75, 156, 13, 13), corners(2), identchannel("ArpLight3"), colour(20, 20, 20, 255)
image bounds(107, 156, 13, 13), corners(2), identchannel("ArpLight4"), colour(20, 20, 20, 255)
image bounds(139, 156, 13, 13), corners(2), identchannel("ArpLight5"), colour(20, 20, 20, 255)
image bounds(171, 156, 13, 13), corners(2), identchannel("ArpLight6"), colour(20, 20, 20, 255)
image bounds(204, 156, 13, 13), corners(2), identchannel("ArpLight7"), colour(20, 20, 20, 255)
image bounds(236, 156, 13, 13), corners(2), identchannel("ArpLight8"), colour(20, 20, 20, 255)
}





;--------------------------------------------------------- MODULO ENVOLVENTE ---------------------------------------------------------





image bounds(342, 6, 241, 148), plant("ADSR"), colour(0, 0, 0, 0), outlinethickness(1){

label bounds(6, 28, 10, 10), text("A"),fontcolour(152, 165, 171, 255)
label bounds(6, 58, 10, 10), text("D"),fontcolour(152, 165, 171, 255)
label bounds(6, 88, 10, 10), text("S"),fontcolour(152, 165, 171, 255)
label bounds(6, 118, 10, 10), text("R"),fontcolour(152, 165, 171, 255)

image bounds(0, 0, 241, 148), plant("ADSR1"), identchannel("ADSR1"), colour(0, 0, 0, 0), outlinethickness(1),  {
label bounds(4, 4, 80, 13), text("ENVELOPE 1"), fontcolour(152, 165, 171, 255)
rslider bounds(18, 20, 29, 29), channel("A1"),range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 50, 29, 29), channel("D1"),range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 80, 29, 29), channel("S1"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 110, 29, 29), channel("R1"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) 
gentable bounds(52, 20, 183, 115), identchannel("ADSR1_Shape_ID"), tablenumber(300.00000000000000000000), amprange(-0.04000000000000000000, 1.10000002384185791016, 300.00000000000000000000, 0.0100), active(1), fill(0), tablecolour:0(64, 224, 208, 255)
button bounds(130, 5, 25, 12), channel("ADSR1Type"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 
}
image bounds(0, 0, 241, 148), plant("ADSR2"), identchannel("ADSR2"), colour(0, 0, 0, 0), , outlinethickness(1), visible(0){
label bounds(4, 4, 80, 13), text("ENVELOPE 2"), fontcolour(152, 165, 171, 255)
rslider bounds(18, 20, 29, 29), channel("A2"),range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 50, 29, 29), channel("D2"),range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 80, 29, 29), channel("S2"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 110, 29, 29), channel("R2"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
gentable bounds(52, 20, 183, 115), identchannel("ADSR2_Shape_ID"), tablenumber(301.00000000000000000000), amprange(-0.04000000000000000000, 1.10000002384185791016, 301.00000000000000000000, 0.0100), active(1), fill(0), tablecolour:0(64, 224, 208, 255)
button bounds(130, 5, 25, 12), channel("ADSR2Type"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 
}
image bounds(0, 0, 241, 148), plant("ADSR3"), identchannel("ADSR3"), colour(0, 0, 0, 0), , outlinethickness(1), visible(0){
label bounds(4, 4, 80, 13), text("ENVELOPE 3"), fontcolour(152, 165, 171, 255)
rslider bounds(18, 20, 29, 29), channel("A3"),range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 50, 29, 29), channel("D3"),range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 80, 29, 29), channel("S3"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 110, 29, 29), channel("R3"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) 
gentable bounds(52, 20, 183, 115), identchannel("ADSR3_Shape_ID"), tablenumber(302.00000000000000000000), amprange(-0.04000000000000000000, 1.10000002384185791016, 302.00000000000000000000, 0.0100), active(1), fill(0), tablecolour:0(64, 224, 208, 255)
button bounds(130, 5, 25, 12), channel("ADSR3Type"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 

}
image bounds(0, 0, 241, 148), plant("ADSR4"), identchannel("ADSR4"), colour(0, 0, 0, 0), , outlinethickness(1), visible(0){
label bounds(4, 4, 80, 13), text("ENVELOPE 4"), fontcolour(152, 165, 171, 255)
rslider bounds(18, 20, 29, 29), channel("A4"),range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 50, 29, 29), channel("D4"),range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 80, 29, 29), channel("S4"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 110, 29, 29), channel("R4"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
gentable bounds(52, 20, 183, 115), identchannel("ADSR4_Shape_ID"), tablenumber(303.00000000000000000000), amprange(-0.04000000000000000000, 1.10000002384185791016, 303.00000000000000000000, 0.0100), active(1), fill(0), tablecolour:0(64, 224, 208, 255)
button bounds(130, 5, 25, 12), channel("ADSR4Type"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 

}
image bounds(0, 0, 241, 148), plant("ADSR5"), identchannel("ADSR5"), colour(0, 0, 0, 0), , outlinethickness(1), visible(0){
label bounds(4, 4, 80, 13), text("ENVELOPE 5"), fontcolour(152, 165, 171, 255)
rslider bounds(18, 20, 29, 29), channel("A5"),range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 50, 29, 29), channel("D5"),range(0.001, 2, 0.4, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 80, 29, 29), channel("S5"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 110, 29, 29), channel("R5"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
gentable bounds(52, 20, 183, 115), identchannel("ADSR5_Shape_ID"), tablenumber(304.00000000000000000000), amprange(-0.04000000000000000000, 1.10000002384185791016, 304.00000000000000000000, 0.0100), active(1), fill(0), tablecolour:0(64, 224, 208, 255)
button bounds(130, 5, 25, 12), channel("ADSR5Type"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 

}
}
button bounds(504, 10, 15, 13), channel("ADSR1Act"), colour:1(0, 0, 0, 0), colour:0(0, 0, 0, 0),text("1", "1")
button bounds(518, 10, 15, 13), channel("ADSR2Act"), colour:1(0, 0, 0, 0), colour:0(0, 0, 0, 0),text("2", "2")
button bounds(532, 10, 15, 13), channel("ADSR3Act"), colour:1(0, 0, 0, 0), colour:0(0, 0, 0, 0),text("3", "3")
button bounds(546, 10, 15, 13), channel("ADSR4Act"), colour:1(0, 0, 0, 0), colour:0(0, 0, 0, 0),text("4", "4")
button bounds(560, 10, 15, 13), channel("ADSR5Act"), colour:1(0, 0, 0, 0), colour:0(0, 0, 0, 0),text("5", "5")






;--------------------------------------------------------- MODULO FILTRADO ---------------------------------------------------------





image bounds(586, 6, 220, 148), plant("FILTER1"), colour(0, 0, 0, 0), outlinethickness(1){
label bounds(4, 4, 63, 13), text("FILTER 1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

rslider bounds(54, 78, 29, 29), channel("Filt1Res"), identchannel("FILTER1_RES_ID"),  range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.5)
rslider bounds(54, 78, 29, 29), channel("Filt1Bandwith"), identchannel("FILTER1_BANDWITH_ID"), range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.5)
rslider bounds(90, 78, 29, 29), channel("Filt1Cutoff"),  range(20, 20000, 1000, 0.3, 0.05), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.05) value(1000)
rslider bounds(174, 60, 25, 25), channel("Filt1KBD"),  range(0, 200, 0, 1, 1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(1)
rslider bounds(126, 78, 29, 29), channel("Filt1Amount"),   range(0, 1, 1, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.01)
rslider bounds(174, 106, 25, 25), channel("Filt1EnvAmt"), range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)

rslider bounds(18, 18, 29, 29), channel("Filt1A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 48, 29, 29), channel("Filt1D"), range(0.001, 2, 0.4, 1, 0.001), ,imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 78, 29, 29), channel("Filt1S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 108, 29, 29), channel("Filt1R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)


image file("SVG\HP.svg"), bounds(114, 58, 13, 13)
image file("SVG\LP.svg"), bounds(114, 20, 13, 13)
image file("SVG\BP.svg"), bounds(114, 40, 13, 13)

image file("SVG\filt1ab.svg"), bounds(66, 50, 19, 18)
image file("SVG\filt1a.svg"), bounds(66, 28, 20, 8)

label bounds(52, 26, 13, 10), text("A"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(52, 48, 13, 10), text("A"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(52, 60, 13, 10), text("B"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(4, 26, 13, 13), text("A"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(4, 56, 13, 13), text("D"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(4, 86, 13, 13), text("S"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(4, 116, 13, 13), text("R"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(54, 112, 25, 10), text("BW"), identchannel("FILTER1_BANDWITH_TEXT_ID"), fontcolour(152, 165, 171, 255), visible(0) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(54, 112, 25, 10), text("Res"), identchannel("FILTER1_RES_TEXT_ID"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(88, 112, 35, 10), text("Cutoff"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(158, 94, 57, 10), text("KBD Track"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(188, 84, 25, 8), text("200%"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(164, 84, 17, 8), text("0%"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(131, 112, 20, 10), text("Amt"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(158, 130, 57, 10), text("Env Amt"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

checkbox bounds(134, 40, 13, 13), channel("Filter1Type2"), colour:1(90, 185, 87, 255), shape("circle")
checkbox bounds(134, 58, 13, 13), channel("Filter1Type3"), colour:1(90, 185, 87, 255), shape("circle")

checkbox bounds(92, 28, 13, 13), channel("Filt1Path1"), identchannel("FILTER1_TYPE1_ID"), colour:1(90, 185, 87, 255), shape("circle")
checkbox bounds(92, 50, 13, 13), channel("Filt1Path2"), identchannel("FILTER1_TYPE2_ID"), colour:1(90, 185, 87, 255), shape("circle")
button bounds(70, 5, 25, 12), channel("Filt1EnvType"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255)

}
nslider bounds(720, 24, 16, 16),  channel("Filt1dbOct"), identchannel("FILTER1_ORDER_ID"), range(1, 4, 2, 1, 1), velocity(1) increment(1) colour(50, 50, 50, 255) 
nslider bounds(684, 132, 16, 16),  channel("Filt1CutMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(646, 132, 16, 16),  channel("Filt1ResBanMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)

image bounds(733, 8, 73, 53), plant("FILTER1LPOCT"), colour(0, 0, 0, 0), outlinethickness(1),outlinecolour(50, 50, 50, 0),identchannel("PLANT_LP1OCT"){
label bounds(46, 4, 22, 8), text("6 dB"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(46, 16, 22, 8), text("12 dB"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(46, 28, 22, 8), text("18 dB"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(46, 40, 24, 8), text("24 dB"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(14, 4, 13, 8), text("1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(14, 16, 13, 8), text("2"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(14, 28, 13, 8), text("3"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(14, 40, 13, 8), text("4"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
image file("SVG\filtdboct.svg"), bounds(28, 6, 16, 41)
image file("SVG\bracket.svg"), bounds(3, 3, 13, 46)
}


image bounds(810, 6, 220, 148), plant("FILTER2"), colour(0, 0, 0, 0), outlinethickness(1),  {
label bounds(4, 4, 63, 13), text("FILTER 2"), fontcolour(152, 165, 171, 255)

rslider bounds(54, 78, 29, 29), channel("Filt2Res"), identchannel("FILTER2_RES_ID"),  range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.5)
rslider bounds(54, 78, 29, 29), channel("Filt2Bandwith"), identchannel("FILTER2_BANDWITH_ID"), range(0, 1, 0.5, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.5)
rslider bounds(90, 78, 29, 29), channel("Filt2Cutoff"),  range(20, 20000, 1000, 0.3, 0.05), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.05) value(1000)
rslider bounds(174, 60, 25, 25), channel("Filt2KBD"),  range(0, 200, 0, 1, 1), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(1)
rslider bounds(126, 78, 29, 29), channel("Filt2Amount"),  range(0, 1, 1, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(174, 106, 25, 25), channel("Filt2EnvAmt"), range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)

rslider bounds(18, 18, 29, 29), channel("Filt2A"), range(0, 1, 0.002, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(18, 48, 29, 29), channel("Filt2D"), range(0.001, 2, 0.4, 1, 0.001), ,imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(0.4)
rslider bounds(18, 78, 29, 29), channel("Filt2S"), range(0.001, 1, 1, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) value(1)
rslider bounds(18, 108, 29, 29), channel("Filt2R"), range(0.001, 3, 0.3, 1, 0.001), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)

image file("SVG\HP.svg"), bounds(114, 58, 13, 13)
image file("SVG\LP.svg"), bounds(114, 22, 13, 13)
image file("SVG\BP.svg"), bounds(114, 40, 13, 13)

image file("SVG\filt1a.svg"), bounds(68, 46, 20, 8)
image file("SVG\filt1a.svg"), bounds(68, 26, 20, 8)

label bounds(52, 26, 13, 10), text("B"), fontcolour(152, 165, 171, 255)
label bounds(52, 56, 29, 10), text("Filt1"), fontcolour(152, 165, 171, 255)

label bounds(4, 26, 13, 13), text("A"), fontcolour(152, 165, 171, 255)
label bounds(4, 56, 13, 13), text("D"), fontcolour(152, 165, 171, 255)
label bounds(4, 86, 13, 13), text("S"), fontcolour(152, 165, 171, 255)
label bounds(4, 116, 13, 13), text("R"), fontcolour(152, 165, 171, 255)

label bounds(54, 112, 25, 10), text("BW"), identchannel("FILTER2_BANDWITH_TEXT_ID"), fontcolour(152, 165, 171, 255), visible(0)
label bounds(54, 112, 25, 10), text("Res"), identchannel("FILTER2_RES_TEXT_ID"), fontcolour(152, 165, 171, 255)
label bounds(88, 112, 35, 10), text("Cutoff"), fontcolour(152, 165, 171, 255)
label bounds(158, 94, 57, 10), text("KBD Track"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(188, 84, 25, 8), text("200%"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(164, 84, 17, 8), text("0%"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(131, 112, 20, 10), text("Amt"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(158, 130, 57, 10), text("Env Amt"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

checkbox bounds(134, 40, 13, 13), , channel("Filter2Type2"), colour:1(90, 185, 87, 255), shape("circle")
checkbox bounds(134, 58, 13, 13), channel("Filter2Type3"), colour:1(90, 185, 87, 255), shape("circle")

checkbox bounds(92, 26, 13, 13), channel("Filt2Path1"),text("B"), identchannel("FILTER2_TYPE1_ID"), colour:1(90, 185, 87, 255), shape("circle")
checkbox bounds(92, 46, 13, 13), channel("Filt2Path2"),text("Filter 1"), identchannel("FILTER2_TYPE2_ID"), colour:1(90, 185, 87, 255), shape("circle")
button bounds(70, 5, 25, 12), channel("Filt2EnvType"), text("Exp", "Lin"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255)
}

image bounds(956, 8, 73, 53), plant("FILTER2LPOCT"), colour(0, 0, 0, 0), outlinethickness(1),outlinecolour(50,50,50,0),identchannel("PLANT_LP2OCT"){
;label bounds(36, 0, 38, 10), text("dB/Oct"), fontcolour(152, 165, 171, 255)
label bounds(46, 4, 22, 8), text("6 dB"), fontcolour(152, 165, 171, 255)
label bounds(46, 16, 22, 8), text("12 dB"), fontcolour(152, 165, 171, 255)
label bounds(46, 28, 22, 8), text("18 dB"), fontcolour(152, 165, 171, 255)
label bounds(46, 40, 24, 8), text("24 dB"), fontcolour(152, 165, 171, 255)

label bounds(14, 4, 13, 8), text("1"), fontcolour(152, 165, 171, 255)
label bounds(14, 16, 13, 8), text("2"), fontcolour(152, 165, 171, 255)
label bounds(14, 28, 13, 8), text("3"), fontcolour(152, 165, 171, 255)
label bounds(14, 40, 13, 8), text("4"), fontcolour(152, 165, 171, 255)
image file("SVG\filtdboct.svg"), bounds(28, 6, 16, 41)
image file("SVG\bracket.svg"), bounds(3, 3, 13, 46)
}

nslider bounds(942, 24, 16, 16),  channel("Filt2dbOct"), identchannel("FILTER2_ORDER_ID"), range(1, 4, 2, 1, 1), velocity(1) increment(1) colour(50, 50, 50, 255) value(2)
nslider bounds(908, 132, 16, 16),  channel("Filt2CutMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(870, 132, 16, 16),  channel("Filt2ResBanMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)





;--------------------------------------------------------- MODULO LFO ---------------------------------------------------------





image bounds(342, 158, 155, 88), plant("LFO1"), colour(0, 0, 0, 0), , outlinethickness(1),  {
label bounds(4, 4, 45, 13), text("LFO 1"), fontcolour(152, 165, 171, 255)

rslider bounds(82, 20, 29, 29), imgfile("Background", "SVG\knob4back.svg"), channel("LFO1Amount"),  range(0, 1, 0.5, 1, 0.01), trackercolour(0, 0, 0, 0) increment(0.01) value(0.5)
rslider bounds(10, 20, 29, 29), imgfile("Background", "SVG\knob4back.svg"), channel("LFO1Rate"), range(0, 20, 0, 1, 0.01) , trackercolour(0, 0, 0, 0) increment(0.01)
rslider bounds(118, 19, 30, 30), channel("LFO1Shape"), imgfile("Background", "SVG\knob4back.svg"), colour(70, 70, 70, 200), range(1, 4, 1, 1, 1), trackercolour(0, 0, 0, 0) increment(1) value(1)
rslider bounds(50, 26, 20, 20),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), channel("LFO1KBD"),  range(0, 200, 0, 1, 1) 

label bounds(11, 50, 26, 10), text("Rate"),fontcolour(152, 165, 171, 255)
label bounds(77, 50, 40, 10), text("Amount"),fontcolour(152, 165, 171, 255)
label bounds(50, 50, 20, 10), text("KBD"),fontcolour(152, 165, 171, 255)

image bounds(126, 52, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255), outlinethickness(0.5) 
image file("SVG\sine_wave.svg"), identchannel("LFO1_WAVE1_ID"), bounds(127, 54, 12, 10), 
image file("SVG\sawtooth_wave.svg"), identchannel("LFO1_WAVE2_ID"),bounds(127, 54, 12, 10), visible(0)
image file("SVG\square_wave.svg"), identchannel("LFO1_WAVE3_ID"),bounds(127, 54, 12, 10), visible(0)
image file("SVG\triangular_wave.svg"), identchannel("LFO1_WAVE4_ID"),bounds(127, 54, 10, 10), visible(0)
}

nslider bounds(358, 224, 16, 16), channel("LFO1RateADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)
nslider bounds(430, 224, 16, 16), channel("LFO1AmountADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)


image bounds(342, 250, 155, 88), plant("LFO2"), colour(0, 0, 0, 0), , outlinethickness(1),  {
label bounds(4, 4, 45, 13), text("LFO 2"), fontcolour(152, 165, 171, 255)

rslider bounds(82, 20, 29, 29), imgfile("Background", "SVG\knob4back.svg"), channel("LFO2Amount"),  range(0, 1, 0.5, 1, 0.01), trackercolour(0, 0, 0, 0) increment(0.01) value(0.5)
rslider bounds(10, 20, 29, 29), imgfile("Background", "SVG\knob4back.svg"), channel("LFO2Rate1"), identchannel("LFO2_RATE1_ID"). range(0, 20, 0, 1, 0.01) , trackercolour(0, 0, 0, 0) increment(0.01)
rslider bounds(10, 20, 29, 29), imgfile("Background", "SVG\knob4back.svg"), channel("LFO2Rate2"), identchannel("LFO2_RATE2_ID"), visible(0), range(-5, 5, 1, 1, 1) , trackercolour(0, 0, 0, 0) increment(1)
rslider bounds(118, 19, 30, 30), channel("LFO2Shape"), imgfile("Background", "SVG\knob4back.svg"), colour(70, 70, 70, 200), range(1, 4, 1, 1, 1), trackercolour(0, 0, 0, 0) increment(1) value(1)
rslider bounds(50, 26, 20, 20),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), channel("LFO2KBD"), range(0, 200, 0, 1, 1) 

label bounds(11, 50, 26, 10), text("Rate"),fontcolour(152, 165, 171, 255)
label bounds(77, 50, 40, 10), text("Amount"),fontcolour(152, 165, 171, 255)
label bounds(50, 50, 20, 10), text("KBD"),fontcolour(152, 165, 171, 255)

image bounds(126, 52, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255), outlinethickness(0.5) 
image file("SVG\sine_wave.svg"), identchannel("LFO2_WAVE1_ID"), bounds(127, 54, 12, 10), 
image file("SVG\sawtooth_wave.svg"), identchannel("LFO2_WAVE2_ID"),bounds(127, 54, 12, 10), visible(0)
image file("SVG\square_wave.svg"), identchannel("LFO2_WAVE3_ID"),bounds(127, 54, 12, 10), visible(0)
image file("SVG\triangular_wave.svg"), identchannel("LFO2_WAVE4_ID"),bounds(127, 54, 10, 10), visible(0)

button bounds(52, 6, 30, 11), channel("LFO2Locked"), colour:1(90, 185, 87, 255), text("Lock", "Lock")
}
nslider bounds(350, 316, 16, 16), channel("LFO2RateMod"), range(0, 1, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(364, 316, 16, 16), channel("LFO2RateADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)

nslider bounds(423, 316, 16, 16), channel("LFO2AmountMod"), range(0, 1, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(437, 316, 16, 16), channel("LFO2AmountADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)





;--------------------------------------------------------- MODULADOR AR ---------------------------------------------------------





image bounds(342, 342, 423, 118), plant("MODULATOR"), colour(0, 0, 0, 0), outlinethickness(1)  {

image bounds(0, 0, 138, 118), plant("MODULATOR1"), colour(0, 0, 0, 0),{
label bounds(6, 6, 70, 13), text("AM/RM/FM"), fontcolour(152, 165, 171, 255)
label bounds(6, 28, 20, 13), text("AM"), fontcolour(152, 165, 171, 255)
label bounds(6, 74, 20, 13), text("RM"), fontcolour(152, 165, 171, 255)

;combobox bounds(4, 21, 80, 19), text("Ring Mod", "AM", "Phaser"), channel("ModType"), 
;combobox bounds(4, 44, 62, 16), text("Sine", "Sawtooth", "Square", "Triangle", "Pulse", "AKWG1", "AKWG2", "AKWG3", "AKWG4", "AKWG5", "AKWG6", "AKWG7", "AKWG8"), channel("ModWave")

rslider bounds(32, 74, 25, 25), channel("RMDepth"), range(0.2, 1, 0.5, 1, 0.01), imgfile("Background", "SVG\knob4back.svg") increment(0.01)
rslider bounds(58, 74, 25, 25), channel("RMRate"), range(0.2, 1, 0.5, 1, 0.01), imgfile("Background", "SVG\knob4back.svg") increment(0.01)
rslider bounds(84, 74, 25, 25), channel("RMWave"), range(1, 2, 1, 1, 1), imgfile("Background", "SVG\knob4back.svg") increment(1)
rslider bounds(32, 28, 25, 25), channel("AMDepth"), range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg") increment(0.01)
rslider bounds(58, 28, 25, 25), channel("AMRate"), range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg") increment(0.01)
rslider bounds(84, 28, 25, 25), channel("AMWave"), range(1, 2, 1, 1, 1), imgfile("Background", "SVG\knob4back.svg") increment(1)

label bounds(32, 100, 26, 8), text("Depth"), fontcolour(152, 165, 171, 255)
label bounds(59, 100, 23, 8), text("Rate"), fontcolour(152, 165, 171, 255)
label bounds(88, 100, 16, 8), text("WF"), fontcolour(152, 165, 171, 255)

label bounds(32, 54, 26, 8), text("Depth"), fontcolour(152, 165, 171, 255)
label bounds(59, 54, 23, 8), text("Rate"), fontcolour(152, 165, 171, 255)
label bounds(88, 54, 16, 8), text("WF"), fontcolour(152, 165, 171, 255)
button bounds(6, 44, 20, 11), channel("AMAct"), text("On", "On"), colour:1(90, 185, 87, 255)
button bounds(6, 90, 20, 11), channel("RMAct"), text("On", "On"), colour:1(90, 185, 87, 255)

image bounds(114, 34, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255), outlinethickness(0.5) 
image file("SVG\sine_wave.svg"), identchannel("AM_WAVE1_ID"), bounds(115, 36, 12, 10),
image file("SVG\sineharm_wave.svg"), identchannel("AM_WAVE2_ID"),bounds(115, 36, 12, 10), visible(0)
image file("SVG\square_wave.svg"), identchannel("AM_WAVE3_ID"),bounds(115, 36, 12, 10), visible(0)

image bounds(114, 80, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255), outlinethickness(0.5) 
image file("SVG\sine_wave.svg"), identchannel("RM_WAVE1_ID"), bounds(115, 82, 12, 10)
image file("SVG\sineharm_wave.svg"), identchannel("RM_WAVE2_ID"),bounds(115, 82, 12, 10), visible(0)
}





;---------------------------------------------------------FM/PM ---------------------------------------------------------





image bounds(135, 0, 297, 118), plant("FM"), colour(0, 0, 0, 0), ,  {
;label bounds(10, 16, 28, 13), text("FM"), fontcolour(152, 165, 171, 255)
button bounds(10, 6, 22, 12), channel("FModType"), text("FM", "PM"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255), value(1) 

label bounds(60, 38, 32, 10), text("Ratio"),fontcolour(152, 165, 171, 255)
label bounds(244, 38, 32, 10), text("Ratio"),fontcolour(152, 165, 171, 255)
label bounds(152, 38, 32, 10), text("Ratio"),fontcolour(152, 165, 171, 255)

label bounds(77, 74, 32, 10), text("Fb"),fontcolour(152, 165, 171, 255)
label bounds(261, 74, 32, 10), text("Fb"),fontcolour(152, 165, 171, 255)
label bounds(169, 74, 32, 10), text("Fb"),fontcolour(152, 165, 171, 255)

label bounds(16, 68, 40, 10), text("Index 1"),fontcolour(152, 165, 171, 255)
label bounds(108, 68, 40, 10), text("Index 2"),fontcolour(152, 165, 171, 255)
label bounds(200, 68, 40, 10), text("Index 3"),fontcolour(152, 165, 171, 255)
label bounds(16, 24, 55, 11), text("Operator 1"),fontcolour(152, 165, 171, 255)
label bounds(108, 24, 55, 11), text("Operator 2"),fontcolour(152, 165, 171, 255)
label bounds(200, 24, 55, 11), text("Operator 3"),fontcolour(152, 165, 171, 255)

button bounds(36, 6, 20, 11), channel("FMAct"), text("On", "On"), colour:1(90, 185, 87, 255)

rslider bounds(18, 38, 29, 29), channel("Op1Index"),  range(0, 15, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(0.01)
rslider bounds(110, 38, 29, 29) channel("Op2Index"),  range(0, 15, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.01)
rslider bounds(202, 38, 29, 29), channel("Op3Index"),  range(0, 15, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0) increment(0.01)

rslider bounds(67, 70, 17, 17),  channel("Op1Feedback"), identchannel("OP1_FEEDBACK_ID"), range(0, 0.5, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), increment(0.01) value(0)
rslider bounds(159, 70, 17, 17),  channel("Op2Feedback"), identchannel("OP2_FEEDBACK_ID"), range(0, 0.5, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), increment(0.01) value(0)
rslider bounds(251, 70, 17, 17),  channel("Op3Feedback"), identchannel("OP3_FEEDBACK_ID"), range(0, 1, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), increment(0.01) value(0)

button bounds(144, 93, 25, 12), channel("Op2Mode"), text("Osc", "Op"),colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255)
button bounds(236, 93, 25, 12), channel("Op3Mode"), text("Osc", "Op"), colour:1(106, 106, 106, 255), colour:0(106, 106, 106, 255)

}
}

nslider bounds(536, 392, 34, 17),  channel("Op1Ratio"), range(0.01, 30, 1, 1, 0.01), velocity(1)
nslider bounds(494, 422, 16, 16),  channel("Op1LFOMod"), range(0, 3, 0, 1, 1),, velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(508, 422, 16, 16),  channel("Op1ADSRMod"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255) value(1)

nslider bounds(628, 392, 34, 17),  channel("Op2Ratio"), range(0.01, 30, 1, 1, 0.01), velocity(1)
nslider bounds(646, 434, 15, 15),  channel("Op2linkOp"), identchannel("OP2_LINKOP_ID"), range(0, 1, 0, 1, 1), velocity(1) increment(1)
nslider bounds(646, 434, 15, 15),  channel("Op2linkOsc"), identchannel("OP2_LINKOSC_ID"), range(0, 3, 0, 1, 1), velocity(1) increment(1)
nslider bounds(586, 422, 16, 16),  channel("Op2LFOMod"), range(0, 3, 0, 1, 1),, velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(600, 422, 16, 16),  channel("Op2ADSRMod"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255) value(1)

nslider bounds(720, 392, 34, 17),  channel("Op3Ratio"), range(0.01, 30, 1, 1, 0.01), velocity(1)
nslider bounds(738, 434, 15, 15),  channel("Op3linkOp"), identchannel("OP3_LINKOP_ID"), range(0, 2, 0, 1, 1), velocity(1) increment(1)
nslider bounds(738, 434, 15, 15),  channel("Op3linkOsc"), identchannel("OP3_LINKOSC_ID"), range(0, 3, 0, 1, 1), velocity(1) increment(1)
nslider bounds(678, 422, 16, 16),  channel("Op3LFOMod"), range(0, 3, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(692, 422, 16, 16),  channel("Op3ADSRMod"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255) value(1)






;--------------------------------------------------------- MODULO OSCILADOR ---------------------------------------------------------





image bounds(8, 6, 330, 148), plant("OSC1"), colour(0, 0, 0, 0), outlinethickness(1){
label bounds(4, 4, 100, 13), text("OSCILLATOR 1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(303, 6, 14, 14), text("A")
label bounds(303, 103, 14, 14), text("B")

vslider bounds(293, 17, 34, 92), channel("Osc1Panner"), identchannel("OSC1_PAN_ID"), range(0, 1, 0.5, 1, 0.001), colour(70, 30, 0, 255), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) value(0.5)
rslider bounds(159, 74, 29, 29), channel("Osc1lev"), range(0, 1, 0.7, 1, 0.01),, value(0.7),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider bounds(229, 74, 29, 29), channel("WTcontrol1"), identchannel("OSC1_WTKNOB_ID"),range(0, 1, 0, 1, 0.01), textcolour(255, 255, 255, 255) , imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider  bounds(195, 74, 29, 29), channel("PitchControl1"), range(-6, 6, 0, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider  bounds(262, 74, 29, 29), channel("Osc1oct"), range(-4, 4, 0, 1, 1)  colour(255, 255, 255, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), 

label bounds(157, 105, 32, 11), text("Level"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(193, 105, 32, 11), text("Pitch"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(228, 105, 32, 11), text("WT"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(262, 105, 32, 11), text("Oct"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(163, 59, 25, 10), text("WF 1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(197, 59, 25, 10), text("WF 2"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(228, 48, 60, 10), text("Pulse Width"), identchannel("OSC1_PWTEXT_ID"), fontcolour(152, 165, 171, 255), visible(0) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
rslider  bounds(230, 26, 20, 20), channel("Osc1PW"), identchannel("OSC1_PWKNOB_ID"), range(0.1, 0.9, 0.5, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), visible(0)  value(0.5)

rslider  bounds(160, 26, 30, 30), channel("Osc1Wave"), range(1, 14, 1, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), ,outlinecolour(50, 50, 50, 255), value(1)
rslider  bounds(194, 26, 30, 30), channel("WTOsc1Wave"), range(1, 14, 2, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),  value(2)

gentable bounds(10, 26, 141, 112), tablenumber(2.01e2), identchannel("OUTOSC1_Shape_ID"), amprange(-1.399999976158142, 1.399999976158142, 2.01e2, 0.0010), fill(0), tablecolour:0(64, 224, 208, 255)

image bounds(117, 26, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255) outlinethickness(0.5) linethickness(0.5)
image bounds(133, 26, 14, 14), corners(2), colour(100, 100, 100, 100),  outlinethickness(0.5) linethickness(0.5)

image file("SVG\sine_wave.svg"), identchannel("OSC1_WAVE1_ID"), bounds(118, 28, 12, 10)
image file("SVG\sawtooth_wave.svg"),identchannel("OSC1_WAVE2_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC1_WAVE3_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC1_WAVE4_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC1_WAVE5_ID"), bounds(118, 28, 10, 10),visible(0)
image file("SVG\triangular_wave.svg"),identchannel("OSC1_WAVE6_ID"), bounds(118, 28, 10, 10),visible(0)

label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE7_ID"), text("1"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE8_ID"), text("2"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE9_ID"), text("3"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE10_ID"), text("4"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE11_ID"), text("5"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE12_ID"), text("6"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE13_ID"), text("7"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC1_WAVE14_ID"), text("8"),visible(0)

image file("SVG\sine_wave.svg"), identchannel("WTOSC1_WAVE1_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\sawtooth_wave.svg"), identchannel("WTOSC1_WAVE2_ID"), bounds(134, 28, 12, 10)
image file("SVG\square_wave.svg"), identchannel("WTOSC1_WAVE3_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC1_WAVE4_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC1_WAVE5_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\triangular_wave.svg"), identchannel("WTOSC1_WAVE6_ID"), bounds(134, 28, 10, 10),visible(0)

label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE7_ID"), text("1"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE8_ID"), text("2"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE9_ID"), text("3"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE10_ID"), text("4"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE11_ID"), text("5"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE12_ID"), text("6"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE13_ID"), text("7"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC1_WAVE14_ID"), text("8"),visible(0)

button bounds(105, 5, 21, 11), value(1), channel("Osc1act"), text("On", "On"), colour:1(90, 185, 87, 255)
}

nslider bounds(166, 128, 16, 16),  channel("Osc1LevMod"), range(0, 3, 0, 1, 1),, velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(180, 128, 16, 16),  channel("Osc1LevADSR"), range(1, 5, 1, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255) value(1)

nslider bounds(202, 128, 16, 16),  channel("Osc1PitchMod"), range(0, 3, 0, 1, 1), velocity(1), colour(94, 14, 14, 255) increment(1)
nslider bounds(216, 128, 16, 16),  channel("Osc1PitchADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255) increment(1)

nslider bounds(238, 128, 16, 16),  channel("Osc1WTMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1), colour(94, 14, 14, 255)
nslider bounds(252, 128, 16, 16),  channel("Osc1WTADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255) increment(1)

nslider bounds(304, 128, 16, 16),  channel("Osc1PanMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(318, 128, 16, 16),  channel("Osc1PanADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)

image bounds(8, 158, 330, 150), plant("OSC2"), colour(0, 0, 0, 0), , outlinethickness(1),{
label bounds(4, 4, 100, 13), text("OSCILLATOR 2"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(303, 6, 14, 14), text("A")
label bounds(303, 103, 14, 14), text("B")

vslider bounds(293, 17, 34, 92), channel("Osc2Panner"), identchannel("OSC2_PAN_ID"), range(0, 1, 0.5, 1, 0.001), colour(70, 30, 0, 255), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) value(0.5)
rslider bounds(159, 74, 29, 29), channel("Osc2lev"), range(0, 1, 0.7, 1, 0.01),increment(0.01), value(0.7),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider bounds(229, 74, 29, 29), channel("WTcontrol2"), identchannel("OSC2_WTKNOB_ID"),range(0, 1, 0, 1, 0.01), textcolour(255, 255, 255, 255) increment(0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0)
rslider  bounds(195, 74, 29, 29), channel("PitchControl2"), range(-6, 6, 0, 1, 0.01) ,imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(0.01)
rslider  bounds(262, 74, 29, 29), channel("Osc2oct"), range(-4, 4, 0, 1, 1)  colour(255, 255, 255, 255),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1)

label bounds(157, 105, 32, 12), text("Level"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(193, 105, 32, 12), text("Pitch"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(228, 105, 32, 12), text("WT"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(262, 105, 32, 12), text("Oct"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(163, 59, 25, 10), text("WF 1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(197, 59, 25, 10), text("WF 2"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(228, 48, 60, 10), text("Pulse Width"), identchannel("OSC2_PWTEXT_ID"), fontcolour(152, 165, 171, 255), visible(0) fontcolour(152, 165, 171, 255)
rslider  bounds(230, 26, 20, 20), channel("Osc2PW"), identchannel("OSC2_PWKNOB_ID"), range(0.1, 0.9, 0.5, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), visible(0) increment(0.01) value(0.5)
rslider  bounds(160, 26, 30, 30), channel("Osc2Wave"), range(1, 12, 1, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1),outlinecolour(50, 50, 50, 255), value(1)
rslider  bounds(194, 26, 30, 30), channel("WTOsc2Wave"), range(1, 12, 2, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1) value(2)

gentable bounds(10, 26, 141, 112), tablenumber(203), identchannel("OUTOSC2_Shape_ID"), amprange(-1.3999999761581420898, 1.3999999761581420898, 203, 0.0010), fill(0), tablecolour:0(64, 224, 208, 255)

image bounds(117, 26, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255), outlinethickness(0.5) 
image bounds(133, 26, 14, 14), corners(2), colour(100, 100, 100, 100), outlinethickness(0.5)

image file("SVG\sine_wave.svg"), identchannel("OSC2_WAVE1_ID"), bounds(118, 28, 12, 10)
image file("SVG\sawtooth_wave.svg"),identchannel("OSC2_WAVE2_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC2_WAVE3_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC2_WAVE4_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC2_WAVE5_ID"), bounds(118, 28, 10, 10),visible(0)
image file("SVG\triangular_wave.svg"),identchannel("OSC2_WAVE6_ID"), bounds(118, 28, 10, 10),visible(0)

label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE7_ID"), text("1"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE8_ID"), text("2"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE9_ID"), text("3"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE10_ID"), text("4"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE11_ID"), text("5"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE12_ID"), text("6"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE13_ID"), text("7"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC2_WAVE14_ID"), text("8"),visible(0)

image file("SVG\sine_wave.svg"), identchannel("WTOSC2_WAVE1_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\sawtooth_wave.svg"), identchannel("WTOSC2_WAVE2_ID"), bounds(134, 28, 12, 10)
image file("SVG\square_wave.svg"), identchannel("WTOSC2_WAVE3_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC2_WAVE4_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC2_WAVE5_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\triangular_wave.svg"), identchannel("WTOSC2_WAVE6_ID"), bounds(134, 28, 10, 10),visible(0)

label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE7_ID"), text("1"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE8_ID"), text("2"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE9_ID"), text("3"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE10_ID"), text("4"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE11_ID"), text("5"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE12_ID"), text("6"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE13_ID"), text("7"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC2_WAVE14_ID"), text("8"),visible(0)

button bounds(105, 5, 21, 11), value(0), channel("Osc2act"), text("On", "On"), colour:1(90, 185, 87, 255)
}

nslider bounds(166, 282, 16, 16),  channel("Osc2LevMod"), range(0, 3, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(180, 282, 16, 16),  channel("Osc2LevADSR"), range(1, 5, 1, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)

nslider bounds(202, 282, 16, 16),  channel("Osc2PitchMod"), range(0, 3, 0, 1, 1), velocity(1), colour(94, 14, 14, 255)
nslider bounds(216, 282, 16, 16),  channel("Osc2PitchADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255)

nslider bounds(238, 282, 16, 16),  channel("Osc2WTMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1), colour(94, 14, 14, 255)
nslider bounds(252, 282, 16, 16),  channel("Osc2WTADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255)

nslider bounds(304, 280, 16, 16),  channel("Osc2PanMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(318, 280, 16, 16),  channel("Osc2PanADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)


image bounds(8, 312, 330, 148), plant("OSC3"), colour(0, 0, 0, 0), , outlinethickness(1) {
label bounds(4, 4, 100, 13), text("OSCILLATOR 3"), fontcolour(152, 165, 171, 255)

label bounds(303, 6, 14, 14), text("A")
label bounds(303, 103, 14, 14), text("B")

vslider bounds(293, 17, 34, 92), channel("Osc3Panner"), identchannel("OSC3_PAN_ID"), range(0, 1, 0.5, 1, 0.001), colour(70, 30, 0, 255), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) value(0.5)
rslider bounds(159, 74, 29, 29), channel("Osc3lev"), range(0, 1, 0.7, 1, 0.01),increment(0.01), value(0.7),imgfile("Slider", "integralknob2.svg"),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider bounds(229, 74, 29, 29), channel("WTcontrol3"), identchannel("OSC3_WTKNOB_ID"), range(0, 1, 0, 1, 0.01), textcolour(255, 255, 255, 255) increment(0.01), imgfile("Slider", "integralknob2.svg"),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider  bounds(195, 74, 29, 29), channel("PitchControl3"), range(-6, 6, 0, 1, 0.01), imgfile("Slider", "integralknob2.svg"),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0),
rslider  bounds(262, 74, 29, 29), channel("Osc3oct"), range(-4, 4, 0, 1, 1)  colour(255, 255, 255, 255), imgfile("Slider", "integralknob2.svg"),imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1)

label bounds(157, 105, 32, 12), text("Level"), fontcolour(152, 165, 171, 255)
label bounds(193, 105, 32, 12), text("Pitch"), fontcolour(152, 165, 171, 255)
label bounds(228, 105, 32, 12), text("WT"), fontcolour(152, 165, 171, 255)
label bounds(262, 105, 32, 12), text("Oct"), fontcolour(152, 165, 171, 255)
label bounds(163, 59, 25, 10), text("WF 1"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(197, 59, 25, 10), text("WF 2"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)

label bounds(228, 48, 60, 10), text("Pulse Width"), identchannel("OSC3_PWTEXT_ID"), fontcolour(152, 165, 171, 255), visible(0)
rslider  bounds(230, 26, 20, 20), channel("Osc3PW"), identchannel("OSC3_PWKNOB_ID"), range(0.1, 0.9, 0.5, 1, 0.01), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), visible(0) increment(0.01) value(0.5)
rslider  bounds(160, 26, 30, 30), channel("Osc3Wave"), range(1, 12, 1, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1),outlinecolour(50, 50, 50, 255), value(1)
rslider  bounds(194, 26, 30, 30), channel("WTOsc3Wave"), range(1, 12, 2, 1, 1), colour(70, 70, 70, 255), imgfile("Background", "SVG\knob4back.svg"), trackercolour(0, 0, 0, 0), increment(1) value(2)

gentable bounds(10, 26, 141, 112), tablenumber(205.00000000000000000000), identchannel("OUTOSC3_Shape_ID"), amprange(-1.40000002384185791016, 1.40000002384185791016, 205.00000000000000000000, 0.0010), fill(0), tablecolour:0(64, 224, 208, 255)

image bounds(117, 26, 14, 14), corners(2), colour(100, 100, 100, 100), outlinecolour(55, 52, 52, 255) outlinethickness(0.5) linethickness(0.5)
image bounds(133, 26, 14, 14), corners(2), colour(100, 100, 100, 100),  outlinethickness(0.5) linethickness(0.5)

image file("SVG\sine_wave.svg"), identchannel("OSC3_WAVE1_ID"), bounds(118, 28, 12, 10)
image file("SVG\sawtooth_wave.svg"),identchannel("OSC3_WAVE2_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC3_WAVE3_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC3_WAVE4_ID"), bounds(118, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"),identchannel("OSC3_WAVE5_ID"), bounds(118, 28, 10, 10),visible(0)
image file("SVG\triangular_wave.svg"),identchannel("OSC3_WAVE6_ID"), bounds(118, 28, 10, 10),visible(0)

label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE7_ID"), text("1"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE8_ID"), text("2"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE9_ID"), text("3"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE10_ID"), text("4"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE11_ID"), text("5"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE12_ID"), text("6"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE13_ID"), text("7"),visible(0)
label bounds(120, 28, 9, 9),identchannel("OSC3_WAVE14_ID"), text("8"),visible(0)

image file("SVG\sine_wave.svg"), identchannel("WTOSC3_WAVE1_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\sawtooth_wave.svg"), identchannel("WTOSC3_WAVE2_ID"), bounds(134, 28, 12, 10)
image file("SVG\square_wave.svg"), identchannel("WTOSC3_WAVE3_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC3_WAVE4_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\square_wave.svg"), identchannel("WTOSC3_WAVE5_ID"), bounds(134, 28, 12, 10),visible(0)
image file("SVG\triangular_wave.svg"), identchannel("WTOSC3_WAVE6_ID"), bounds(134, 28, 10, 10),visible(0)

label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE7_ID"), text("1"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE8_ID"), text("2"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE9_ID"), text("3"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE10_ID"), text("4"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE11_ID"), text("5"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE12_ID"), text("6"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE13_ID"), text("7"),visible(0)
label bounds(136, 28, 9, 9), identchannel("WTOSC3_WAVE14_ID"), text("8"),visible(0)

button bounds(105, 5, 21, 11), value(0), channel("Osc3act"), text("On", "On"), colour:1(90, 185, 87, 255)
}

nslider bounds(168, 434, 16, 16),  channel("Osc3LevMod"), range(0, 3, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(182, 434, 16, 16),  channel("Osc3LevADSR"), range(1, 5, 1, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)

nslider bounds(204, 434, 16, 16),  channel("Osc3PitchMod"), range(0, 3, 0, 1, 1), velocity(1), colour(94, 14, 14, 255)
nslider bounds(218, 434, 16, 16),  channel("Osc3PitchADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255)

nslider bounds(240, 434, 16, 16),  channel("Osc3WTMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1), colour(94, 14, 14, 255)
nslider bounds(254, 434, 16, 16),  channel("Osc3WTADSR"), range(0, 5, 0, 1, 1), velocity(1), colour(33, 65, 43, 255)

nslider bounds(302, 434, 16, 16),  channel("Osc3PanMod"), range(0, 2, 0, 1, 1), velocity(1) increment(1) colour(94, 14, 14, 255)
nslider bounds(316, 434, 16, 16),  channel("Osc3PanADSR"), range(0, 5, 0, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255)


; GENERADOR DE RUIDO

image bounds(768, 322, 70, 138), plant("NOISE"), colour(0, 0, 0, 0), , outlinethickness(1),  {
label bounds(2, 4, 44, 13), text("NOISE"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
label bounds(44, 26, 13, 14), text("A")
label bounds(44, 108, 13, 14), text("B")
label bounds(6, 56, 32, 12), text("Level"), fontcolour(152, 165, 171, 255) fontcolour(152, 165, 171, 255)
button bounds(46, 5, 20, 11), , channel("NoiseAct"), text("On", "On"), colour:1(90, 185, 87, 255)
rslider bounds(7, 26, 29, 29), channel("NoiseLevel"),  range(0, 1, 0, 1, 0.01),imgfile("Background", "SVG\knob4back.svg") increment(0.01)
vslider bounds(35, 36, 31, 79), channel("NoisePanner"), identchannel("NOISE_PAN_ID"), range(0, 1, 0.5, 1, 0.001), colour(70, 30, 0, 255), trackercolour(210, 180, 140, 255), textcolour(255, 255, 255, 255) value(0.5)
}

nslider bounds(782, 396, 16, 16), channel("NoiseLevADSR"), range(1, 5, 1, 1, 1), velocity(1) increment(1) colour(33, 65, 43, 255) value(1)


</Cabbage>
<CsoundSynthesizer>
<CsOptions>
    -n -+rtmidi=NULL -M0 -dm0 --midi-key=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>

sr = 44100	; Frecuencia de muestreo 44.1 kHz
ksmps = 16  ; sr/ksmps es la frecuencia de actualización de las variables tipo k (k-rate)
nchnls = 2  ; Salida estéreo
0dbfs = 1   ; Fondo de escala digital establecido en 1

; Control y Limitación de instancias

maxalloc 1, 20
maxalloc 99, 1
maxalloc 100, 1
maxalloc 101, 1
maxalloc 102, 1

; Inicializacion de canales zak

zakinit	1,8

; Tablas de formas de onda

i_	ftgen	100, 0, 16384, 10, 1						                    ; Display
i_  ftgen	101, 0, 16384, 10, 1                                            ; Sinusoidal
i_  ftgen	102, 0, 16384, 10, 1                                            ; Sinusoidal

i_  ftgen   103, 0, 16384,  7, 0, 0, 1, 4096, 1, 0, -1, 12288,-1,0,0        ; PW025    
i_  ftgen   104, 0, 16384,  7, 0, 0, 1, 1638, 1, 0, -1, 14746,-1,0,0        ; PW010

i_  ftgen	105, 0, 16384, 1, "AKWF_0448_01.wav", 0, 0, 0                   ; AKWF1
i_  ftgen	106, 0, 16384, 1, "AKWF_0509_01.wav", 0, 0, 0                   ; AKWF2
i_  ftgen	107, 0, 16384, 1, "AKWF_0544_01.wav", 0, 0, 0                   ; ..
i_  ftgen	108, 0, 16384, 1, "AKWF_0622_01.wav", 0, 0, 0
i_  ftgen	109, 0, 16384, 1, "AKWF_0680_01.wav", 0, 0, 0 
i_  ftgen	110, 0, 16384, 1, "AKWF_0699_01.wav", 0, 0, 0 
i_  ftgen	111, 0, 16384, 1, "AKWF_0710_01.wav", 0, 0, 0
i_  ftgen	112, 0, 16384, 1, "AKWF_0001_01.wav", 0, 0, 0

i_  ftgen	131, 0, 16384,  10, 1                                           ; Sinusoidal
i_  ftgen   132, 0, 16384,  10, 1, 0.707, 0.5                               ; Sinusoidal + 2 Armónicos

ifree   vco2init   29, 1000,    1.05, 16384, 16384                          ; Cuadrada, triangular, diente de sierra
ifree2  vco2init -103, ifree,   1.05, 16384, 16384, 103                     ; AKWF 1
ifree3  vco2init -104, ifree2,  1.05, 16384, 16384, 104                     ; AKWF 2
ifree4  vco2init -105, ifree3,  1.05, 16384, 16384, 105                     ; ...
ifree5  vco2init -106, ifree4,  1.05, 16384, 16384, 106
ifree6  vco2init -107, ifree5,  1.05, 16384, 16384, 107
ifree7  vco2init -108, ifree6,  1.05, 16384, 16384, 108
ifree8  vco2init -109, ifree7,  1.05, 16384, 16384, 109
ifree9  vco2init -110, ifree8,  1.05, 16384, 16384, 110
ifree10 vco2init -111, ifree9,  1.05, 16384, 16384, 111
ifree11 vco2init -112, ifree10, 1.05, 16384, 16384, 112

; Variables globales

; Arpegiador

gkNotes[] init 16
gkNotes[] fillarray 200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200
gkNotesKBD[] init 16
gkFund init 0   ; Fundamental
gkRel1 init 1

; Interpolación formas de onda

giwtindex1  ftgen   200, 0, 2, -2, 101, 102
gimorphed1  ftgen   201, 0, 16384, 10, 1, 0.1
giwtindex2  ftgen   202, 0, 2, -2, 101, 102
gimorphed2  ftgen   203, 0, 16384, 10, 1, 0.1
giwtindex3  ftgen   204, 0, 2, -2, 101, 102
gimorphed3  ftgen   205, 0, 16384, 10, 1, 0.1

instr 1  ; Motor de síntesis

    ;------------------------- OBTENER CANALES CABBAGE -------------------------

    ; Módulo oscilador 
    
    kOsc1act    chnget    "Osc1act"
    kOsc2act    chnget    "Osc2act"
    kOsc3act    chnget    "Osc3act"
    
    kOsc1lev    chnget    "Osc1lev"
    kOsc2lev    chnget    "Osc2lev"
    kOsc3lev    chnget    "Osc3lev"
       
    kOsc1oct    chnget    "Osc1oct"
    kOsc2oct    chnget    "Osc2oct"
    kOsc3oct    chnget    "Osc3oct"
    
    kOsc1Panner  chnget   "Osc1Panner"
    kOsc2Panner  chnget   "Osc2Panner"
    kOsc3Panner  chnget   "Osc3Panner"
      
    kPitchControl1  chnget    "PitchControl1"
    kPitchControl2  chnget    "PitchControl2"
    kPitchControl3  chnget    "PitchControl3"
    
    kOsc1LevMod     chnget    "Osc1LevMod"
    kOsc1LevADSR    chnget    "Osc1LevADSR"
    kOsc1PitchMod   chnget    "Osc1PitchMod"
    kOsc1PitchADSR  chnget    "Osc1PitchADSR"  
    kOsc1PanMod     chnget    "Osc1PanMod"
    kOsc1PanADSR    chnget    "Osc1PanADSR"
    kOsc1WTADSR     chnget    "Osc1WTADSR"
    
    kOsc2LevMod     chnget    "Osc2LevMod"
    kOsc2LevADSR    chnget    "Osc2LevADSR"
    kOsc2PitchMod   chnget    "Osc2PitchMod"
    kOsc2PitchADSR  chnget    "Osc2PitchADSR"  
    kOsc2WTMod      chnget    "Osc2WTMod"
    kOsc2WTADSR     chnget    "Osc2WTADSR"
    kOsc2PanMod     chnget    "Osc2PanMod"
    kOsc2PanADSR    chnget    "Osc2PanADSR"
    kOsc2WTADSR     chnget    "Osc2WTADSR"
    
    kOsc3LevMod     chnget    "Osc3LevMod"
    kOsc3LevADSR    chnget    "Osc3LevADSR"
    kOsc3PitchMod   chnget    "Osc3PitchMod"
    kOsc3PitchADSR  chnget    "Osc3PitchADSR"  
    kOsc3WTMod      chnget    "Osc3WTMod"
    kOsc3WTADSR     chnget    "Osc3WTADSR"
    kOsc3PanMod     chnget    "Osc3PanMod"
    kOsc3PanADSR    chnget    "Osc3PanADSR"
    kOsc3WTADSR     chnget    "Osc3WTADSR"
    
    kNoiseAct       chnget    "NoiseAct"
    kNoiseLevADSR   chnget    "NoiseLevADSR"
    kNoiseLevel     chnget    "NoiseLevel"
    kNoisePanner    chnget    "NoisePanner"
    kNoiseADSR      chnget    "NoiseADSR"
    kNoiseType      chnget    "NoiseType"
   
     
    ; Módulo LFO
    
    kLFO1Rate 	     chnget	  "LFO1Rate"
    kLFO1Amount      chnget   "LFO1Amount"
    iLFO1Shape       chnget	  "LFO1Shape"
    
    iLFO2Shape       chnget	  "LFO2Shape"
    kLFO2Rate1 	     chnget	  "LFO2Rate1"
    kLFO2Rate2       chnget	  "LFO2Rate2"
    kLFO2Locked      chnget   "LFO2Locked"
        
    kLFO2Amount      chnget   "LFO2Amount"
    kLFO2Patch       chnget   "LFO2Patch"
    
    kLFO1RateADSR    chnget   "LFO1RateADSR"
    kLFO1AmountADSR  chnget   "LFO1AmountADSR"

    kLFO2RateMod     chnget   "LFO2RateMod"
    kLFO2RateADSR    chnget   "LFO2RateADSR"

    kLFO2AmountMod   chnget   "LFO2AmountMod"
    kLFO2AmountADSR  chnget   "LFO2AmountADSR"
    
    kLFO1KBD         chnget   "LFO1KBD"
    kLFO2KBD         chnget   "LFO2KBD"
    
    ; Módulador AR

    iRMWave      chnget     "RMWave"
    kRMDepth 	 chnget	    "RMDepth"
    kRMRate      chnget	    "RMRate"
    
    iAMWave      chnget     "AMWave"
    kAMDepth 	 chnget	    "AMDepth"
    kAMRate      chnget	    "AMRate"
    
    kFMAct       chnget     "FMAct"
    kRMAct       chnget     "RMAct"
    kAMAct       chnget     "AMAct"
    kFModType    chnget     "FModType"
    
    kOp1Ratio    chnget     "Op1Ratio"
    kOp2Ratio    chnget     "Op2Ratio"
    kOp3Ratio    chnget     "Op3Ratio"
    
    kOp1Index    chnget     "Op1Index"
    kOp2Index    chnget     "Op2Index"
    kOp3Index    chnget     "Op3Index"

    kOp1LFOMod   chnget     "Op1LFOMod"
    kOp2LFOMod   chnget     "Op2LFOMod"
    kOp3LFOMod   chnget     "Op3LFOMod"
    
    kOp1ADSRMod  chnget     "Op1ADSRMod"
    kOp2ADSRMod  chnget     "Op2ADSRMod"
    kOp3ADSRMod  chnget     "Op3ADSRMod"
    
    kOp2Mode     chnget     "Op2Mode"
    kOp3Mode     chnget     "Op3Mode"
    
    kOp2linkOp   chnget     "Op2linkOp"
    kOp2linkOsc  chnget     "Op2linkOsc"
    
    kOp3linkOp   chnget     "Op3linkOp"
    kOp3linkOsc  chnget     "Op3linkOsc"
    
    kOp1Feedback chnget     "Op1Feedback"
    kOp2Feedback chnget     "Op2Feedback"
    kOp3Feedback chnget     "Op3Feedback"
    
    ; Módulo de envolvente (EG)
    
    iA1    chnget    "A1"
    iD1    chnget    "D1"
    iS1    chnget    "S1"
    iR1    chnget    "R1"
    
    iA2    chnget    "A2"
    iD2    chnget    "D2"
    iS2    chnget    "S2"
    iR2    chnget    "R2"
     
    iA3    chnget    "A3"
    iD3    chnget    "D3"
    iS3    chnget    "S3"
    iR3    chnget    "R3"
         
    iA4    chnget    "A4"
    iD4    chnget    "D4"
    iS4    chnget    "S4"
    iR4    chnget    "R4"
         
    iA5    chnget    "A5"
    iD5    chnget    "D5"
    iS5    chnget    "S5"
    iR5    chnget    "R5"
    
    kADSR1Type  chnget  "ADSR1Type"
    kADSR2Type  chnget  "ADSR2Type"
    kADSR3Type  chnget  "ADSR3Type"
    kADSR4Type  chnget  "ADSR4Type"
    kADSR5Type  chnget  "ADSR5Type"
    
    ; Módulo de filtrado
    
    iFilt1A   chnget      "Filt1A"
    iFilt1D   chnget      "Filt1D"
    iFilt1S   chnget      "Filt1S"
    iFilt1R   chnget      "Filt1R"
    
    iFilt2A   chnget      "Filt2A"
    iFilt2D   chnget      "Filt2D"
    iFilt2S   chnget      "Filt2S"
    iFilt2R   chnget      "Filt2R"
    
    kFilt1Res       chnget   "Filt1Res"
    kFilt1Cutoff    chnget   "Filt1Cutoff"
    kFilt2Res       chnget   "Filt2Res"
    kFilt2Cutoff    chnget   "Filt2Cutoff"
    
    kFilt1Path1     chnget   "Filt1Path1"
    kFilt1Path2     chnget   "Filt1Path2"
    kFilt2Path1     chnget   "Filt2Path1"
    kFilt2Path2     chnget   "Filt2Path2"
    kFilt1Cutoff2   chnget   "Filt1Cutoff2"
    kFilt1KBD       chnget   "Filt1KBD"
    kFilt2KBD       chnget   "Filt2KBD"
    
    kFilter1Type2   chnget   "Filter1Type2"
    kFilter1Type3   chnget   "Filter1Type3"
    
    kFilter2Type2   chnget   "Filter2Type2"
    kFilter2Type3   chnget   "Filter2Type3"
    
    kFilt1Bandwith  chnget   "Filt1Bandwith"
    kFilt2Bandwith  chnget   "Filt2Bandwith"
    
    kFilt1CutMod    chnget   "Filt1CutMod"
    kFilt2CutMod    chnget   "Filt2CutMod"
    kFilt3CutMod    chnget   "Filt3CutMod"
    
    kFilt1ResBanMod chnget   "Filt1ResBanMod"
    kFilt2ResBanMod chnget   "Filt2ResBanMod"
    kFilt3ResBanMod chnget   "Filt3ResBanMod"
    
    kFilt1KBD       chnget   "Filt1KBD"
    kFilt2KBD       chnget   "Filt2KBD"
    
    kFilt1dbOct     chnget   "Filt1dbOct"
    kFilt2dbOct     chnget   "Filt2dbOct"
    
    kFilt1Amount    chnget   "Filt1Amount"
    kFilt2Amount    chnget   "Filt2Amount"
    
    kFilt1EnvAmt    chnget   "Filt1EnvAmt"
    kFilt2EnvAmt    chnget   "Filt2EnvAmt"
    
    kFilt1EnvType   chnget   "Filt1EnvType"
    kFilt2EnvType   chnget   "Filt2EnvType"
    
    ; Módulo principal
    
    kMainGain   chnget  "MainGain"
    kMainAMix   chnget  "MainAMix"
    kMainBMix   chnget  "MainBMix"
    kMainCMix   chnget  "MainCMix"
    
    ; Módulo arpegiador
    
    kArpRate    chnget  "ArpRate"
    kArpGate    chnget  "ArpGate"
    
    ; Módulo de síntesis aditiva
        
    kAddAct     chnget  "AddAct"
    kAddGain    chnget  "AddGain"
    
    
    ;------------------------- PREPARACIÓN DE VARIABLES -------------------------
    
    kOct1 pow 2, kOsc1oct
    kOct2 pow 2, kOsc2oct
    kOct3 pow 2, kOsc3oct

    kcps1=cpsmidinn(p4)*kOct1
    kcps2=cpsmidinn(p4)*kOct2
    kcps3=cpsmidinn(p4)*kOct3
    kcps4=cpsmidinn(p4)
    
    kcps1=kcps1*cent(kPitchControl1*100)
    kcps2=kcps2*cent(kPitchControl2*100)
    kcps3=kcps3*cent(kPitchControl3*100)
    
    iNote1=p4-12*i(kOct1)
    iNote2=p4-12*i(kOct2)
    iNote3=p4-12*i(kOct3)
    
   
    
    iKybdScal1	limit	1 + ( ((64-iNote1)/127) *  3), 0, 5     ; Atenuación en octavas altas
    iKybdScal2	limit	1 + ( ((64-iNote2)/127) *  3), 0, 5     ; ..
    iKybdScal3	limit	1 + ( ((64-iNote3)/127) *  3), 0, 5
    iKybdScal4	limit	1 + ( ((64-p4)/127) *  3), 0, 5
    
    kamp1=kOsc1lev*iKybdScal1/3
    kamp2=kOsc2lev*iKybdScal2/3
    kamp3=kOsc3lev*iKybdScal3/3
    kamp4=kNoiseLevel
    
    if p5==2 then  
        
        ;Solo cuando se generan instancias a traves del arpegiador
        
        kArpEnvRate=kArpRate/(kArpGate*10)
        
        iarpD1=i(kArpEnvRate)
        iarpS1=0.001
        iarpR1=0.001
        aArpEnv linsegr 1, 10, iS1, iR1, 0.001
        kamp1=kOsc1lev*iKybdScal1/3*p6*aArpEnv
        kamp2=kOsc2lev*iKybdScal2/3*p6*aArpEnv
        kamp3=kOsc3lev*iKybdScal3/3*p6*aArpEnv
        kamp4=kNoiseLevel*iKybdScal4*0.1*p6*aArpEnv
        kcps1=kcps1*cent(p7*100)
        kcps2=kcps2*cent(p7*100)
        kcps3=kcps3*cent(p7*100)
    endif
    
    ;------------------------- MÓDULO ENVOLVENTE (EG) -------------------------
    
    kEnvTrigger changed iA1,iA2,iA3,iA4,iA5,iD1,iD2,iD3,iD4,iD5,iS1,iS2,iS3,iS4,iS5,iR1,iR2,iR3,iR4,iR5
    
    if kEnvTrigger==1 then
    reinit SEND_ENVELOPES
    endif
    
    SEND_ENVELOPES:
    
        if kADSR1Type==0 then                                           ; EG 1 Lineal 
            if iA1=0 then
                aenv1 expsegr 1, iD1, iS1, iR1, 0.001                   
            else
                aenv1 expsegr 0.01, iA1, 1, iD1, iS1, iR1, 0.001        
            endif
        else                                                            ; EG 1 Exponencial
            if iA1=0 then
                aenv1 linsegr 1, iD1, iS1, iR1, 0.001                   
            else
                aenv1 linsegr 0.01, iA1, 1, iD1, iS1, iR1, 0.001        
            endif
            
        endif
        
        if kADSR2Type==0 then
            if iA2=0 then
                aenv2 expsegr 1, iD2, iS2, iR2, 0.001                   
            else
                aenv2 expsegr 0.01, iA2, 1, iD2, iS2, iR2, 0.001        
            endif
        else
            if iA2=0 then
                aenv2 linsegr 1, iD2, iS2, iR2, 0.001                  
            else
                aenv2 linsegr 0.01, iA2, 1, iD2, iS2, iR2, 0.001      
            endif
            
        endif
        
        if kADSR3Type==0 then
            if iA3=0 then
                aenv3 expsegr 1, iD3, iS3, iR3, 0.001              
            else
                aenv3 expsegr 0.01, iA3, 1, iD3, iS3, iR3, 0.001      
            endif
        else
            if iA3=0 then
                aenv3 linsegr 1, iD3, iS3, iR3, 0.001               
            else
                aenv3 linsegr 0.01, iA3, 1, iD3, iS3, iR3, 0.001       
            endif
            
        endif
        
        if kADSR4Type==0 then
            if iA4=0 then
                aenv4 expsegr 1, iD4, iS4, iR4, 0.001                   
            else
                aenv4 expsegr 0.01, iA4, 1, iD4, iS4, iR4, 0.001        
            endif
        else
            if iA4=0 then
                aenv4 linsegr 1, iD4, iS4, iR4, 0.001             
            else
                aenv4 linsegr 0.01, iA4, 1, iD4, iS4, iR4, 0.001  
            endif
            
        endif
        
        if kADSR5Type==0 then
            if iA5=0 then
                aenv5 expsegr 1, iD5, iS5, iR5, 0.001            
            else
                aenv5 expsegr 0.01, iA5, 1, iD5, iS5, iR5, 0.001       
            endif
        else
            if iA5=0 then
                aenv5 linsegr 1, iD5, iS5, iR5, 0.001             
            else
                aenv5 linsegr 0.01, iA5, 1, iD5, iS5, iR5, 0.001     
            endif
            
        endif
    rireturn
    
    ;prints "kADSR1Type=%f, iD1=%f, iS1=%f, iR1=%f\n",kADSR1Type,iD1,iS1,iR1
    ;prints "iA3=%f, iD3=%f, iS3=%f, iR3=%f\n",iA3,iD3,iS3,iR3
    
    kenv1=k(aenv1)
    kenv2=k(aenv2)
    kenv3=k(aenv3)
    kenv4=k(aenv4)
    kenv5=k(aenv5)
    
    ;printks "kenv1=%f, kenv3=%f\n",0,kenv1,kenv3
    ;printks "kenv3=%f, aenv3=%f\n",0,kenv3,aenv3
    
    ;------------------------- MÓDULO LFO -------------------------
    
    if kLFO1RateADSR==1 then
        kLFO1Rate=kLFO1Rate*kenv1
    elseif kLFO1RateADSR==2 then
        kLFO1Rate=kLFO1Rate*kenv2
    elseif kLFO1RateADSR==3 then
        kLFO1Rate=kLFO1Rate*kenv3
    elseif kLFO1RateADSR==4 then
        kLFO1Rate=kLFO1Rate*kenv4
    elseif kLFO1RateADSR==5 then
        kLFO1Rate=kLFO1Rate*kenv5
    endif
    
    if kLFO1AmountADSR==1 then
        kLFO1Amount=kLFO1Amount*kenv1
    elseif kLFO1AmountADSR==2 then
        kLFO1Amount=kLFO1Amount*kenv2
    elseif kLFO1AmountADSR==3 then
        kLFO1Amount=kLFO1Amount*kenv3
    elseif kLFO1AmountADSR==4 then
        kLFO1Amount=kLFO1Amount*kenv4
    elseif kLFO1AmountADSR==5 then
        kLFO1Amount=kLFO1Amount*kenv5
    endif
    
    if kLFO2RateADSR==1 then
        kLFO2Rate1=kLFO2Rate1*kenv1
        kLFO2Rate2=kLFO2Rate2*kenv1
    elseif kLFO2RateADSR==2 then
        kLFO2Rate1=kLFO2Rate1*kenv2
        kLFO2Rate2=kLFO2Rate2*kenv2
    elseif kLFO2RateADSR==3 then
        kLFO2Rate1=kLFO2Rate1*kenv3
        kLFO2Rate2=kLFO2Rate2*kenv3
    elseif kLFO2RateADSR==4 then
        kLFO2Rate1=kLFO2Rate1*kenv4
        kLFO2Rate2=kLFO2Rate2*kenv4
    elseif kLFO2RateADSR==5 then
        kLFO2Rate1=kLFO2Rate1*kenv5
        kLFO2Rate2=kLFO2Rate2*kenv5
    endif
    
    if kLFO2AmountADSR==1 then
        kLFO2Amount=kLFO2Amount*kenv1
    elseif kLFO2AmountADSR==2 then
        kLFO2Amount=kLFO2Amount*kenv2
    elseif kLFO2AmountADSR==3 then
        kLFO2Amount=kLFO2Amount*kenv3
    elseif kLFO2AmountADSR==3 then
        kLFO2Amount=kLFO2Amount*kenv4
    elseif kLFO2AmountADSR==3 then
        kLFO2Amount=kLFO2Amount*kenv5
    endif
    
    kLFO1KBDFollow pow 1.05964,(p4-60)*kLFO1KBD/100
    kLFO2KBDFollow pow 1.05964,(p4-60)*kLFO2KBD/100
    
    kLFO1Rate=kLFO1Rate*kLFO1KBDFollow
    kLFO2Rate1=kLFO2Rate1*kLFO2KBDFollow
    kLFO2Rate2=kLFO2Rate2*kLFO2KBDFollow
    
    if changed(iLFO1Shape)==1 then
        reinit LFO1_SHAPE
    endif
    
    LFO1_SHAPE:
        kLFO1Wave lfo 1,kLFO1Rate, iLFO1Shape-1
    rireturn
    
    if(kLFO2RateMod==1) then
        kLFO2Rate1=kLFO2Rate1+kLFO2Rate1*kLFO1Wave    
        kLFO2Rate2=kLFO2Rate2+kLFO2Rate2*kLFO1Wave
    endif
    
    if(kLFO2AmountMod==1) then
        kLFO2Amount=kLFO2Amount+kLFO2Amount*kLFO1Wave
    else
        kLFO2Amount=kLFO2Amount  
    endif
    
    if kLFO2Locked==0 then
    
        if changed(iLFO2Shape)==1 then
            reinit LFO2_SHAPE
        endif
        
        LFO2_SHAPE:
            kLFO2Wave lfo 1, kLFO2Rate1, iLFO2Shape-1
        rireturn
    else
    
        if (kLFO2Rate2>=0) then
        kLFO2Rate2=kLFO1Rate*kLFO2Rate2
        else
        kLFO2Rate2=kLFO1Rate/abs(kLFO2Rate2)
        endif
        
        if changed(iLFO2Shape)==1 then
            reinit LFO2_SHAPE
        endif
        LFO2_SHAPE:
            kLFO2Wave lfo 1, kLFO2Rate2, iLFO2Shape-1
        rireturn
        
    endif
    
    iRel2 init 1
    iRel2KBD init 1
    
    ;------------------------- MODULACIÓN EN AMPLITUD -------------------------
    
    if(kAMAct==1) then
        aAM1 oscili kAMDepth*(kamp1), (kAMRate*kcps1),(130+iAMWave)
        aAM2 oscili kAMDepth*(kamp2), (kAMRate*kcps1),(130+iAMWave)
        aAM3 oscili kAMDepth*(kamp3), (kAMRate*kcps1),(130+iAMWave)
    else
        aAM1=0
        aAM2=0
        aAM3=0
    endif
    
    ;------------------------- MODULACIÓN EN FRECUENCIA/FASE -------------------------
    
    if(kFMAct==1) then
        
        if kOp1ADSRMod==1 then
            kOp1Index=kOp1Index*kenv1
        elseif kOp1ADSRMod==2 then
            kOp1Index=kOp1Index*kenv2
        elseif kOp1ADSRMod==3 then
            kOp1Index=kOp1Index*kenv3
        elseif kOp1ADSRMod==4 then
            kOp1Index=kOp1Index*kenv4
        elseif kOp1ADSRMod==5 then
            kOp1Index=kOp1Index*kenv5
        endif  
        
            ;ADSR
        if kOp2ADSRMod==1 then
            kOp2Index=kOp2Index*kenv1
        elseif kOp2ADSRMod==2 then
            kOp2Index=kOp2Index*kenv2
        elseif kOp2ADSRMod==3 then
            kOp2Index=kOp2Index*kenv3
        elseif kOp2ADSRMod==4 then
            kOp2Index=kOp2Index*kenv4
        elseif kOp2ADSRMod==5 then
            kOp2Index=kOp2Index*kenv5
        endif  
     
        if kOp3ADSRMod==1 then
            kOp3Index=kOp3Index*kenv1
        elseif kOp3ADSRMod==2 then
            kOp3Index=kOp3Index*kenv2
        elseif kOp3ADSRMod==3 then
            kOp3Index=kOp3Index*kenv3
        elseif kOp3ADSRMod==4 then
            kOp3Index=kOp3Index*kenv4
        elseif kOp3ADSRMod==5 then
            kOp3Index=kOp3Index*kenv5
        endif    
            ;LFO
            
        if kOp1LFOMod==1 then
            kOp1Index=kOp1Index+kOp1Index*kLFO1Wave
        elseif kOp1LFOMod==2 then
            kOp1Index=kOp1Index+kOp1Index*kLFO2Wave
        endif
        
        if kOp2LFOMod==1 then
            kOp2Index=kOp2Index+kOp2Index*kLFO1Wave
        elseif kOp2LFOMod==2 then
            kOp2Index=kOp2Index+kOp2Index*kLFO2Wave
        endif
    
        if kOp3LFOMod==1 then
            kOp3Index=kOp3Index+kOp3Index*kLFO1Wave
        elseif kOp3LFOMod==2 then
            kOp3Index=kOp3Index+kOp3Index*kLFO2Wave
        endif
        
        kOp1cps=kcps1*kOp1Ratio
        
        if(kOp2Mode==0) then
            kOp2linkOp=0
            if(kOp2linkOsc==0) then
                kOp2cps=0
            elseif(kOp2linkOsc==1) then
                kOp2cps=kcps1*kOp2Ratio
            elseif(kOp2linkOsc==2) then
                kOp2cps=kcps2*kOp2Ratio
            elseif(kOp2linkOsc==3) then
                kOp2cps=kcps3*kOp2Ratio
            endif
        else
            kOp2linkOsc=0
            if(kOp2linkOp==0) then
                kOp2cps=0
            elseif(kOp2linkOp==1) then
                kOp2cps=kOp1cps*kOp2Ratio/kOp1Ratio
            endif
        endif
        ;printks "Op2Mode=%f, kOp2cps=%f, kOp2linkOsc=%f\n",0.5, kOp2Mode,kOp2cps,kOp2linkOsc
        
        if(kOp3Mode==0) then
            kOp3linkOp=0
            if(kOp3linkOsc==0) then
                kOp3cps=0
            elseif(kOp3linkOsc==1) then
                kOp3cps=kcps1*kOp3Ratio
            elseif(kOp3linkOsc==2) then
                kOp3cps=kcps2*kOp3Ratio
            elseif(kOp3linkOsc==3) then
                kOp3cps=kcps3*kOp3Ratio
            endif
        else
            kOp3linkOsc=0
            if(kOp3linkOp==0) then
                kOp3cps=0
            elseif(kOp3linkOp==1) then
                kOp3cps=kOp1cps*kOp3Ratio/kOp1Ratio
            elseif(kOp3linkOp==2) then
                kOp3cps=kOp2cps*kOp3Ratio/kOp2Ratio
            endif
        endif
        
        aOp3cps=kOp3cps
        aOp2cps=kOp2cps
        aOp1cps=kOp1cps
        
        aOp1ph phasor aOp1cps
        aOp2ph phasor aOp2cps
        aOp3ph phasor aOp3cps
        aOp1 init 0
        aOp2 init 0
        aOp3 init 0
        
        
        if(kOp3cps!=0) then
            if (kFModType==1) then
                aOp3 tablei aOp3ph+aOp3*(a(kOp3Feedback)), 101, 1, 0, 1
                aOp3=aOp3*kOp3Index/(2*$M_PI)
                if(kOp3linkOp==1) then
                    aOp1ph=aOp1ph+aOp3
                elseif(kOp3linkOp==2) then
                    aOp2ph=aOp2ph+aOp3
                endif
            else
                aOp3 oscili kOp3Index*kOp3cps, kOp3cps+aOp3*(a(kOp3Feedback)),101
                
                ;printks "aOp3=%f, kOp3cps+aOp3*(a(kOp3Feedback))=%f\n",0.5, aOp3, kOp3cps+aOp3*(a(kOp3Feedback))
                
                if(kOp3linkOp==1) then
                    aOp1cps=aOp1cps+aOp3
                elseif(kOp3linkOp==2) then
                    aOp2cps=aOp2cps+aOp3
                endif
            endif
        else
            aOp3=0
        endif
        
        if(kOp2cps!=0) then
            if (kFModType==1) then
                aOp2 tablei aOp2ph+aOp2*(a(kOp2Feedback)), 101, 1, 0, 1
                aOp2=aOp2*kOp2Index/(2*$M_PI)
                if(kOp2linkOp==1) then
                    aOp1ph=aOp1ph+aOp2
                endif    
            else
                aOp2 oscili kOp2Index*aOp2cps, aOp2cps,101
                ;printks "aOp2=%f\n",0.5, aOp2
                if(kOp2linkOp==1) then
                    aOp1cps=aOp1cps+aOp2
                endif 
            endif
        else
            aOp2=0
        endif
        
        if (kFModType==1) then
            aOp1 tablei aOp1ph+aOp1*(a(kOp1Feedback)), 101, 1, 0, 1
            aOp1=aOp1*kOp1Index/(2*$M_PI)
        else
            aOp1 oscili kOp1Index*aOp1cps, kOp1cps,101
        endif


    else
        aOp1=0
        aOp2=0
        aOp3=0
    endif
    
    ;------------------------- MÓDULO OSCILADOR -------------------------      
                      
    ; Control de amplitud
    
    if(kOsc1LevMod==1) then
        kamp1=kamp1-(kLFO1Amount*kLFO1Wave*kamp1)  ; LFO 1
    elseif(kOsc1LevMod==2) then
        kamp1=kamp1-(kLFO2Amount*kLFO2Wave*kamp1)  ; LFO 2
    elseif(kOsc1LevMod==3) then
        amp1=kamp1-aAM1                            ; AM
    endif
    
    if(kOsc2LevMod==1) then
        kamp2=kamp2-(kLFO1Amount*kLFO1Wave*kamp2)
    elseif(kOsc2LevMod==2) then
        kamp2=kamp2-(kLFO2Amount*kLFO2Wave*kamp2)
    elseif(kOsc2LevMod==3) then
        amp2=kamp2-aAM2
    endif
          
    if(kOsc3LevMod==1) then
        kamp3=kamp3-(kLFO1Amount*kLFO1Wave*kamp3)
    elseif(kOsc3LevMod==2) then
        kamp3=kamp3-(kLFO2Amount*kLFO2Wave*kamp3)
    elseif(kOsc3LevMod==3) then
        amp3=kamp3-aAM3
    endif         

    ; Control de panner
    
    if(kOsc1PanMod==1) then
       kOsc1Panner=kOsc1Panner+((kOsc1Panner/2)*kLFO1Wave*kLFO1Amount)  ; LFO 1
    elseif(kOsc1PitchMod==2) then
       kOsc1Panner=kOsc1Panner+((kOsc1Panner/2)*kLFO2Wave*kLFO2Amount)  ; LFO 2
    endif
          
    if(kOsc2PanMod==1) then
       kOsc2Panner=kOsc2Panner+((kOsc2Panner/2)*kLFO1Wave*kLFO1Amount)
    elseif(kOsc1PitchMod==2) then
       kOsc2Panner=kOsc2Panner+((kOsc2Panner/2)*kLFO2Wave*kLFO2Amount)
    endif
    
    if(kOsc3PanMod==1) then
       kOsc3Panner=kOsc3Panner+((kOsc3Panner/2)*kLFO1Wave*kLFO1Amount)
    elseif(kOsc1PitchMod==2) then
       kOsc3Panner=kOsc3Panner+((kOsc3Panner/2)*kLFO2Wave*kLFO2Amount)
    endif
    
    if(kOsc1PanADSR==1) then            ; EG 1
       kOsc1Panner=kOsc1Panner*kenv1  
    elseif(kOsc1PanADSR==2) then        ; EG 2
       kOsc1Panner=kOsc1Panner*kenv2  
    elseif(kOsc1PanADSR==3) then        ; ..
       kOsc1Panner=kOsc1Panner*kenv3
   elseif(kOsc1PanADSR==4) then
       kOsc1Panner=kOsc1Panner*kenv4
   elseif(kOsc1PanADSR==5) then
       kOsc1Panner=kOsc1Panner*kenv5
    endif
    
    if(kOsc2PanADSR==1) then
       kOsc2Panner=kOsc2Panner*kenv1
    elseif(kOsc2PanADSR==2) then
       kOsc2Panner=kOsc2Panner*kenv2
    elseif(kOsc2PanADSR==3) then
       kOsc2Panner=kOsc2Panner*kenv3
   elseif(kOsc2PanADSR==4) then
       kOsc2Panner=kOsc2Panner*kenv4
   elseif(kOsc2PanADSR==5) then
       kOsc2Panner=kOsc2Panner*kenv5
    endif
    
    if(kOsc3PanADSR==1) then
       kOsc3Panner=kOsc3Panner*kenv1
    elseif(kOsc3PanADSR==2) then
       kOsc3Panner=kOsc3Panner*kenv2
    elseif(kOsc3PanADSR==3) then
      kOsc3Panner=kOsc3Panner*kenv3
    elseif(kOsc3PanADSR==4) then
      kOsc3Panner=kOsc3Panner*kenv4
    elseif(kOsc3PanADSR==5) then
      kOsc3Panner=kOsc3Panner*kenv5
    endif

    kOsc1Panner limit kOsc1Panner, 0, 1
    kOsc2Panner limit kOsc2Panner, 0, 1
    kOsc3Panner limit kOsc3Panner, 0, 1
    
    ; Control de frecuencia
    
    if(kOsc1PitchADSR==1) then            ; EG 1
       kcps1=kcps1*aenv1
    elseif(kOsc1PitchADSR==2) then        ; EG 2
       kcps1=kcps1*aenv2
    elseif(kOsc1PitchADSR==3) then        ; ..
       kcps1=kcps1*aenv3
    elseif(kOsc1PitchADSR==4) then
       kcps1=kcps1*aenv4
    elseif(kOsc1PitchADSR==5) then
       kcps1=kcps1*aenv5
    endif
    
    if(kOsc2PitchADSR==1) then
       kcps2=kcps2*aenv1
    elseif(kOsc2PitchADSR==2) then
       kcps2=kcps2*aenv2
    elseif(kOsc2PitchADSR==3) then
       kcps2=kcps2*aenv3
    elseif(kOsc2PitchADSR==4) then
       kcps2=kcps2*aenv4
    elseif(kOsc2PitchADSR==5) then
       kcps2=kcps2*aenv5
    endif
    
    if(kOsc3PitchADSR==1) then
       kcps3=kcps3*aenv1
    elseif(kOsc3PitchADSR==2) then
       kcps3=kcps3*aenv2
    elseif(kOsc3PitchADSR==3) then
       kcps3=kcps3*aenv3
    elseif(kOsc3PitchADSR==4) then
       kcps3=kcps3*aenv4
    elseif(kOsc3PitchADSR==5) then
       kcps3=kcps3*aenv5
    endif
    
    aph1 phasor kcps1
    aph2 phasor kcps2
    aph3 phasor kcps3
    
    if(kOsc1PitchMod==1) then                               ; LFO 1
       kcps1=kcps1*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc1PitchMod==2) then                           ; LFO 2
       kcps1=kcps1*cent(kLFO2Wave*kLFO2Amount*3*100)
    elseif(kOsc1PitchMod==3) && (kFModType==0) then         ; FM
       acps1=kcps1+aOp1
       ;printks "Dentro de FM OSC1 aOp1=%f\n", 0.5, aOp1
       if(kOp2linkOsc==1) && kOp2Mode==0 then 
           acps1=acps1+aOp2
       endif
       if(kOp3linkOsc==1) && kOp3Mode==0 then 
           acps1=acps1+aOp3
       endif
    elseif(kOsc1PitchMod==3) && (kFModType==1) then         ; PM
       aph1=aph1+aOp1
       acps1=kcps1
       ;printks "Dentro de FM OSC1 aOp1=%f\n", 0.5, aOp1
       if(kOp2linkOsc==1) && kOp2Mode==0 then 
           aph1=aph1+aOp2
       endif
       if(kOp3linkOsc==1) && kOp3Mode==0 then 
           aph1=aph1+aOp3
       endif
    endif
    
    if(kOsc2PitchMod==1) then
       kcps2=kcps2*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc2PitchMod==2) then
       kcps2=kcps2*cent(kLFO2Wave*kLFO2Amount*3*100)
    elseif(kOsc2PitchMod==3) && (kFModType==0) then
       acps2=kcps2
       if(kOp2linkOsc==2) && kOp2Mode==0 then 
           acps2=acps2+aOp2
       endif
       if(kOp3linkOsc==2) && kOp3Mode==0 then 
           acps2=acps2+aOp3
       endif
    elseif(kOsc2PitchMod==3) && (kFModType==1) then
       acps2=kcps2
       if(kOp2linkOsc==2) && kOp2Mode==0 then 
           aph2=aph2+aOp2
       endif
       if(kOp3linkOsc==2) && kOp3Mode==0 then 
           aph2=aph2+aOp3
       endif
    endif
    
    if(kOsc3PitchMod==1) then
       kcps3=kcps3*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc3PitchMod==2) then
       kcps3=kcps3*cent(kLFO2Wave*kLFO2Amount*3*100)
    elseif(kOsc3PitchMod==3) && (kFModType==0) then
       acps3=kcps3
       if(kOp2linkOsc==3) && kOp2Mode==0 then 
           acps3=acps3+aOp2
       endif
       if(kOp3linkOsc==3) && kOp3Mode==0 then 
           acps3=acps3+aOp3
       endif 
    elseif(kOsc3PitchMod==3) && (kFModType==1) then
        acps3=kcps3
        if(kOp2linkOsc==3) && kOp2Mode==0 then 
           aph3=aph3+aOp2
        endif
        if(kOp3linkOsc==3) && kOp3Mode==0 then 
           aph3=aph3+aOp3
        endif 
    endif

    if (kOsc1PitchMod != 3) then
        acps1=kcps1
    endif
    
    if (kOsc2PitchMod != 3) then
        acps2=kcps2
    endif 
    
    if (kOsc3PitchMod != 3) then
        acps3=kcps3
    endif    
    
    if (kOsc1LevMod != 3) then
        amp1=kamp1
    endif
    
    if (kOsc2LevMod != 3) then
        amp2=kamp2
    endif 
    
    if (kOsc3LevMod != 3) then
        amp3=kamp3
    endif   
    
    acps1 limit acps1, 20, sr/2
    acps2 limit acps2, 20, sr/2
    acps3 limit acps3, 20, sr/2

    ; Generación de la señal
            
    if (kFModType==0) || kFMAct==0 then
    
        asig oscilikt amp1, acps1, 201
        asig2 oscilikt amp2, acps2, 203
        asig3 oscilikt amp3, acps3, 205

    elseif (kFModType==1) then
    
        if (kOsc1PitchMod)==3 && kFMAct==1 then
            asig tablei aph1, 201, 1, 0, 1
            asig=asig*amp1
        else
            asig oscilikt amp1, acps1, 201
        endif
        if (kOsc2PitchMod)==3 && kFMAct==1 then
            asig2 tablei aph2, 203, 1, 0, 1
            asig2=asig2*amp2
        else
            asig2 oscilikt amp2, acps2, 203
        endif
        if (kOsc3PitchMod)==3 && kFMAct==1 then
            asig3 tablei aph3, 205, 1, 0, 1
            asig3=asig3*amp3
        else
            asig3 oscilikt amp3, acps3, 205
        endif

    endif 
    
    ; Generador de ruido
    
    asig4 rand kamp4, 0.5
    
    ; Modulación en anillo
    
    kRingMod1Act=1
    kRingMod2Act=1
    kRingMod3Act=1
    
    if (kRMAct==1) then
    
        aRingModSig1 oscil kRMDepth, (kRMRate*kcps1),(130+iRMWave)
        aRingModSig2 oscil kRMDepth, (kRMRate*kcps2),(130+iRMWave)
        aRingModSig3 oscil kRMDepth, (kRMRate*kcps3),(130+iRMWave)
        
        
        asig=kRingMod1Act*asig*aRingModSig1
        asig2=kRingMod1Act*asig2*aRingModSig2
        asig3=kRingMod1Act*asig3*aRingModSig3
        
    endif
    
    ; Control de amplitud por envolvente
     
    if(kOsc1LevADSR==1) then            ; EG 1
       asig=asig*aenv1
    elseif(kOsc1LevADSR==2) then        ; EG 2
       asig=asig*aenv2
    elseif(kOsc1LevADSR==3) then        ; ..
       asig=asig*aenv3
    elseif(kOsc1LevADSR==4) then
       asig=asig*aenv4
    elseif(kOsc1LevADSR==5) then
       asig=asig*aenv5
    endif

    if(kOsc2LevADSR==1) then
        asig2=asig2*aenv1
    elseif(kOsc2LevADSR==2) then
        asig2=asig2*aenv2
    elseif(kOsc2LevADSR==3) then
        asig2=asig2*aenv3
    elseif(kOsc2LevADSR==4) then
        asig2=asig2*aenv4
    elseif(kOsc2LevADSR==5) then
        asig2=asig2*aenv5
    endif
    
    if(kOsc3LevADSR==1) then
        asig3=asig3*aenv1
    elseif(kOsc3LevADSR==2) then
        asig3=asig3*aenv2
    elseif(kOsc3LevADSR==3) then
        asig3=asig3*aenv3
    elseif(kOsc3LevADSR==4) then
        asig3=asig3*aenv4
    elseif(kOsc3LevADSR==5) then
        asig3=asig3*aenv5
    endif
    
    if(kNoiseLevADSR==1) then
        asig4=asig4*aenv1
    elseif(kNoiseLevADSR==2) then
        asig4=asig4*aenv2
    elseif(kNoiseLevADSR==3) then
        asig4=asig4*aenv3
    elseif(kNoiseLevADSR==4) then
        asig4=asig4*aenv4
    elseif(kNoiseLevADSR==5) then
        asig4=asig4*aenv5
    endif
    
    ; Aplicacion de panner
    
    ap1, ap2 pan2 asig*kOsc1act, kOsc1Panner, 1
    ap3, ap4 pan2 asig2*kOsc2act, kOsc2Panner, 1
    ap5, ap6 pan2 asig3*kOsc3act, kOsc3Panner, 1
    ap7, ap8 pan2 asig4*kNoiseAct, kNoisePanner, 1
    
    a1=sum(ap2,ap4,ap6,ap8) ; Canal A
    a2=sum(ap1,ap3,ap5,ap7) ; Canal B
    
    
    
    
    ;------------------------- MODULO DE FILTRADO ------------------------- 

    ; Envolvente del filtro
    
    if kFilt1EnvType==0 then                                                        ; Exponencial
        if iFilt1A=0 then
            kenvFilt1 expsegr 1, iFilt1D, iFilt1S, iFilt1R, 0.001
        else
            kenvFilt1 expsegr 0.01, iFilt1A, 1, iFilt1D, iFilt1S, iFilt1R, 0.001
        endif
    else
        if iFilt1A=0 then                                                           ; Lineal
            kenvFilt1 linsegr 1, iFilt1D, iFilt1S, iFilt1R, 0.001
        else
            kenvFilt1 linsegr 0.01, iFilt1A, 1, iFilt1D, iFilt1S, iFilt1R, 0.001 
        endif
    endif 

    if kFilt1EnvType==0 then
        if iFilt2A=0 then
            kenvFilt2 expsegr 1, iFilt2D, iFilt2S, iFilt2R, 0.001 
        else
            kenvFilt2 expsegr 0.01, iFilt2A, 1, iFilt2D, iFilt2S, iFilt2R, 0.001 
        endif
    else
        if iFilt2A=0 then
            kenvFilt2 linsegr 1, iFilt2D, iFilt2S, iFilt2R, 0.001 
        else
            kenvFilt2 linsegr 0.01, iFilt2A, 1, iFilt2D, iFilt2S, iFilt2R, 0.001
        endif
    endif
    
    ; Control de frecuencia de corte

    if (kFilt1CutMod==1) then                                           ; LFO 1
        kFilt1Cutoff = kFilt1Cutoff-kFilt1Cutoff*kLFO1Wave*kLFO1Amount
    endif
    
    if (kFilt1CutMod==2) then                                           ; LFO 2
        kFilt1Cutoff = kFilt1Cutoff-kFilt1Cutoff*kLFO2Wave*kLFO2Amount
    endif
    
    if (kFilt2CutMod==1) then
        kFilt2Cutoff = kFilt2Cutoff-kFilt2Cutoff*kLFO1Wave*kLFO1Amount
    endif
    
    if (kFilt2CutMod==2) then
        kFilt2Cutoff = kFilt2Cutoff-kFilt2Cutoff*kLFO2Wave*kLFO2Amount
    endif
        
    kFilt1KBDFollow pow 1.05964,(p4-60)*kFilt1KBD/100   ; Seguimiento del teclado   
    kFilt2KBDFollow pow 1.05964,(p4-60)*kFilt2KBD/100
    
    kFilt1Cutoff=kFilt1Cutoff*kFilt1KBDFollow
    kFilt2Cutoff=kFilt2Cutoff*kFilt2KBDFollow

    
    kenvFilt1=kenvFilt1*kFilt1EnvAmt+(1-kFilt1EnvAmt)   ; Envolvente 
    kenvFilt2=kenvFilt2*kFilt2EnvAmt+(1-kFilt2EnvAmt)
    
    kFilt1Cutoff=kFilt1Cutoff*kenvFilt1             
    kFilt2Cutoff=kFilt2Cutoff*kenvFilt2

    kFilt1Cutoff limit kFilt1Cutoff, 20, 20000 
    kFilt2Cutoff limit kFilt2Cutoff, 20, 20000 
    
          
    ; Control de resonancia/ancho de banda
        
    if (kFilt1ResBanMod==1) then                                        ; LFO 1
    
        kFilt1Res = kFilt1Res-kFilt1Res*kLFO1Wave*kLFO1Amount
        kFilt1Bandwith = kFilt1Bandwith-kFilt1Bandwith*kLFO1Wave*kLFO1Amount
        
    elseif (kFilt1ResBanMod==2) then                                    ; LFO 2
    
        kFilt1Res = kFilt1Res-kFilt1Res*kLFO2Wave*kLFO2Amount
        kFilt1Bandwith = kFilt1Bandwith-kFilt1Bandwith*kLFO2Wave*kLFO2Amount
        
    endif
    
    if (kFilt2ResBanMod==1) then 
    
        kFilt2Res = kFilt2Res-kFilt2Res*kLFO1Wave*kLFO1Amount
        kFilt2Bandwith = kFilt2Bandwith-kFilt2Bandwith*kLFO1Wave*kLFO1Amount
        
    elseif (kFilt2ResBanMod==2) then
    
        kFilt2Res = kFilt2Res-kFilt2Res*kLFO2Wave*kLFO2Amount
        kFilt2Bandwith = kFilt2Bandwith-kFilt2Bandwith*kLFO2Wave*kLFO2Amount
        
    endif
    
    
    ; Filtrado
    
    if(kFilt1Path1==1) then     ; Canal A de entrada
        
        if kFilter1Type2==0 && kFilter1Type3==0 then                            ; LPF (Moog ladder)
            
            a1_6,a1_12,a1_18,a1_24 mvclpf4 a1, kFilt1Cutoff, kFilt1Res
            
            if kFilt1dbOct==1 then
                a1_F1=a1_6
            elseif kFilt1dbOct==2 then
                a1_F1=a1_12
            elseif kFilt1dbOct==3 then
                a1_F1=a1_18
            elseif kFilt1dbOct==4 then
                a1_F1=a1_24   
            endif
        
        elseif kFilter1Type2==1 then                                            ; BPF (Butterworth)
            
            a1_F1 butterbp a1, kFilt1Cutoff, kFilt1Cutoff*kFilt1Bandwith
            
        elseif kFilter1Type3==1 then                                            ; HPF (Moog ladder)
        
            a1_F1 mvchpf a1, kFilt1Cutoff

        endif
        
        a_F1=a1_F1*kFilt1Amount+a1*(1-kFilt1Amount)
    
    elseif kFilt1Path2==1 then    ; Canales A+B de entrada
        
        a12=a1+a2
        
        if kFilter1Type2==0 && kFilter1Type3==0 then                            ; LPF (Moog ladder)
                
            a12_6,a12_12,a12_18,a12_24 mvclpf4 a12, kFilt1Cutoff, kFilt1Res
            
            if kFilt1dbOct==1 then
                a12_F1=a12_6
            elseif kFilt1dbOct==2 then
                a12_F1=a12_12
            elseif kFilt1dbOct==3 then
                a12_F1=a12_18
            elseif kFilt1dbOct==4 then
                a12_F1=a12_24 
            endif
        
        elseif kFilter1Type2==1 then                                            ; ..
            
            a12_F1 butterbp a12, kFilt1Cutoff, kFilt1Cutoff*kFilt1Bandwith
            
        elseif kFilter1Type3==1 then                                            ; ..
            
            a12_F1 mvchpf a12, kFilt1Cutoff

        endif
    
        a_F1=a12_F1*kFilt1Amount+a12*(1-kFilt1Amount)   ; Cantidad de filtrado
    
    endif
        
    if(kFilt2Path1==1) then
        
        if kFilter2Type2==0 && kFilter2Type3==0 then
            
            a2_6,a2_12, a2_18, a2_24 mvclpf4 a2, kFilt2Cutoff, kFilt2Res
            
            if kFilt2dbOct==1 then
                a2_F2=a2_6
            elseif kFilt2dbOct==2 then
                a2_F2=a2_12
            elseif kFilt2dbOct==3 then
                a2_F2=a2_18
            elseif kFilt2dbOct==4 then
                a2_F2=a2_24    
            endif
        
        elseif kFilter2Type2==1 then
            
            a2_F2 butterbp a2, kFilt2Cutoff, kFilt2Bandwith*kFilt2Cutoff
            
        elseif kFilter2Type2==1 then
        
            a2_F2 mvchpf a2, kFilt2Cutoff
        
        endif
        
        a_F2=a2_F2*kFilt2Amount+a2*(1-kFilt2Amount)
        
    elseif (kFilt2Path2==1) then
        
        if kFilter2Type2==0 && kFilter2Type3==0 then
            
            a_F1_6, a_F1_12, a_F1_18, a_F1_24 mvclpf4 a_F1, kFilt2Cutoff, kFilt2Res
            
            if kFilt2dbOct==1 then
                a_F1_F2=a_F1_6
            elseif kFilt2dbOct==2 then
                a_F1_F2=a_F1_12
            elseif kFilt2dbOct==3 then
                a_F1_F2=a_F1_18
            elseif kFilt2dbOct==4 then
                a_F1_F2=a_F1_24
            endif
            
        elseif kFilter2Type2==1 then
            
            a_F1_F2 butterbp a_F1, kFilt2Cutoff, kFilt2Bandwith*kFilt2Cutoff
            
        elseif kFilter2Type3==1 then

            a_F1_F2 mvchpf a_F1, kFilt2Cutoff
            
        endif
        
        a_F2 = a_F1_F2*kFilt2Amount+a_F1*(1-kFilt2Amount)
        
    endif
    
    
    ; Control de salidas del filtro
    
    if (kFilt1Path1==0) && (kFilt1Path2==0) then   ; Se ignora filtrado si no está activo ningún camino de entrada (A/A+B)
        aout1=a1
    else
        aout1=a_F1
    endif
    
    if (kFilt2Path1==0) && (kFilt2Path2==0) then
        aout2=a2
    else
        aout2=a_F2
    endif
    
    if (kFilt1Path1==1) && (kFilt2Path2==1) then   ; Si se filtra el canal A en serie, el canal B debe salir sin filtrr
        aout1=a_F2
        aout2=a2
    elseif (kFilt1Path2==1) && (kFilt2Path2==1) then    ; Si se filtra la suma de canales en serie, no existe señal en el canal B (se encuentra mezclada con la del canal A)
        aout1=a_F2
    endif

    ;------------------------- MODULO DE SINTESIS ADITIVA ------------------------- 
    
    
    if changed(kAddAct)==1 then  ; Se vacia la información almacenada en la variable de salida del módulo con cada cambio en activación
    
        aoutAdd=0
        
    endif
    
    if kAddAct==1 then
        
        kFreqs[] init 12
        kAmps[] init 12
        
        ; Se evita extraer información de los canales de Cabagge si el módulo no está activo
        
        iAdd1A   chnget  "Add1A"
        iAdd1D   chnget  "Add1D"
        iAdd1S   chnget  "Add1S"
        iAdd1R   chnget  "Add1R"
        kAdd1Oct chnget  "Add1Oct"
        
        iAdd2A  chnget  "Add2A"
        iAdd2D  chnget  "Add2D"
        iAdd2S  chnget  "Add2S"
        iAdd2R  chnget  "Add2R"
        
        iAdd3A  chnget  "Add3A"
        iAdd3D  chnget  "Add3D"
        iAdd3S  chnget  "Add3S"
        iAdd3R  chnget  "Add3R"
        
        iAdd4A  chnget  "Add4A"
        iAdd4D  chnget  "Add4D"
        iAdd4S  chnget  "Add4S"
        iAdd4R  chnget  "Add4R"
        
        iAdd5A  chnget  "Add5A"
        iAdd5D  chnget  "Add5D"
        iAdd5S  chnget  "Add5S"
        iAdd5R  chnget  "Add5R"
        
        iAdd6A  chnget  "Add6A"
        iAdd6D  chnget  "Add6D"
        iAdd6S  chnget  "Add6S"
        iAdd6R  chnget  "Add6R"
        
        iAdd7A  chnget  "Add7A"
        iAdd7D  chnget  "Add7D"
        iAdd7S  chnget  "Add7S"
        iAdd7R  chnget  "Add7R"
        
        iAdd8A  chnget  "Add8A"
        iAdd8D  chnget  "Add8D"
        iAdd8S  chnget  "Add8S"
        iAdd8R  chnget  "Add8R"
        
        iAdd9A  chnget  "Add9A"
        iAdd9D  chnget  "Add9D"
        iAdd9S  chnget  "Add9S"
        iAdd9R  chnget  "Add9R"
        
        iAdd10A  chnget  "Add10A"
        iAdd10D  chnget  "Add10D"
        iAdd10S  chnget  "Add10S"
        iAdd10R  chnget  "Add10R"
        
        iAdd11A  chnget  "Add11A"
        iAdd11D  chnget  "Add11D"
        iAdd11S  chnget  "Add11S"
        iAdd11R  chnget  "Add11R"
        
        iAdd12A  chnget  "Add12A"
        iAdd12D  chnget  "Add12D"
        iAdd12S  chnget  "Add12S"
        iAdd12R  chnget  "Add12R"
        
        kAdd1lev  chnget  "Add1lev"
        kAdd2lev  chnget  "Add2lev"
        kAdd3lev  chnget  "Add3lev"
        kAdd4lev  chnget  "Add4lev"
        
        kAdd5lev  chnget  "Add5lev"
        kAdd6lev  chnget  "Add6lev"
        kAdd7lev  chnget  "Add7lev"
        kAdd8lev  chnget  "Add8lev"
        
        kAdd9lev   chnget  "Add9lev"
        kAdd10lev  chnget  "Add10lev"
        kAdd11lev  chnget  "Add11lev"
        kAdd12lev  chnget  "Add12lev"
        
        kAdd1Ratio   chnget  "Add1Ratio"
        kAdd2Ratio   chnget  "Add2Ratio"
        kAdd3Ratio   chnget  "Add3Ratio"
        kAdd4Ratio   chnget  "Add4Ratio"
        
        kAdd5Ratio   chnget  "Add5Ratio"
        kAdd6Ratio   chnget  "Add6Ratio"
        kAdd7Ratio   chnget  "Add7Ratio"
        kAdd8Ratio   chnget  "Add8Ratio"
        
        kAdd9Ratio   chnget  "Add9Ratio"
        kAdd10Ratio  chnget  "Add10Ratio"
        kAdd11Ratio  chnget  "Add11Ratio"
        kAdd12Ratio  chnget  "Add12Ratio"
        
        kAdd1Oct pow 2, kAdd1Oct
        
        if p5==2 then  ;Notas ejecutadas desde el arpegiador
            kFreqs[0]=cpsmidinn(p4)*cent(p7*100)*kAdd1Oct
        else
            kFreqs[0]=cpsmidinn(p4)*kAdd1Oct
        endif
        
        ; Se rellena el array de amplitudes
                
        kAmps[0]=kAdd1lev
        kAmps[1]=kAdd2lev
        kAmps[2]=kAdd3lev
        kAmps[3]=kAdd4lev
        
        kAmps[4]=kAdd5lev
        kAmps[5]=kAdd6lev
        kAmps[6]=kAdd7lev
        kAmps[7]=kAdd8lev
        
        kAmps[8]=kAdd9lev
        kAmps[9]=kAdd10lev
        kAmps[10]=kAdd11lev
        kAmps[11]=kAdd12lev
        
        ; Se rellena el array de frecuencias
        
        kFreqs[1]=kAdd2Ratio*kFreqs[0]
        kFreqs[2]=kAdd3Ratio*kFreqs[0]
        kFreqs[3]=kAdd4Ratio*kFreqs[0]
        
        kFreqs[4]=kAdd5Ratio*kFreqs[0]
        kFreqs[5]=kAdd6Ratio*kFreqs[0]
        kFreqs[6]=kAdd7Ratio*kFreqs[0]
        kFreqs[7]=kAdd8Ratio*kFreqs[0]
        
        kFreqs[8]=kAdd9Ratio*kFreqs[0]
        kFreqs[9]=kAdd10Ratio*kFreqs[0]
        kFreqs[10]=kAdd11Ratio*kFreqs[0]
        kFreqs[11]=kAdd12Ratio*kFreqs[0]
        
        ; Envolventes

        addEnv1 expsegr 0.000001, iAdd1A, 1, iAdd1D, iAdd1S, iAdd1R, 0.000001
        addEnv2 expsegr 0.000001, iAdd2A, 1, iAdd2D, iAdd2S, iAdd2R, 0.000001
        addEnv3 expsegr 0.000001, iAdd3A, 1, iAdd3D, iAdd3S, iAdd3R, 0.000001
        addEnv4 expsegr 0.000001, iAdd4A, 1, iAdd4D, iAdd4S, iAdd4R, 0.000001
  
        addEnv5 expsegr 0.000001, iAdd5A, 1, iAdd5D, iAdd5S, iAdd5R, 0.000001
        addEnv6 expsegr 0.000001, iAdd6A, 1, iAdd6D, iAdd6S, iAdd6R, 0.000001
        addEnv7 expsegr 0.000001, iAdd7A, 1, iAdd7D, iAdd7S, iAdd7R, 0.000001
        addEnv8 expsegr 0.000001, iAdd8A, 1, iAdd8D, iAdd8S, iAdd8R, 0.000001
    
        addEnv9  expsegr 0.000001, iAdd9A,  1, iAdd9D, iAdd9S,   iAdd9R,  0.000001
        addEnv10 expsegr 0.000001, iAdd10A, 1, iAdd10D, iAdd10S, iAdd10R, 0.000001
        addEnv11 expsegr 0.000001, iAdd11A, 1, iAdd11D, iAdd11S, iAdd11R, 0.000001
        addEnv12 expsegr 0.000001, iAdd12A, 1, iAdd12D, iAdd12S, iAdd12R, 0.000001
        
        add1 oscil kAmps[0], kFreqs[0], 101
        add2 oscil kAmps[1], kFreqs[1], 101
        add3 oscil kAmps[2], kFreqs[2], 101
        add4 oscil kAmps[3], kFreqs[3], 101
        
        add5 oscil kAmps[4], kFreqs[4], 101
        add6 oscil kAmps[5], kFreqs[5], 101
        add7 oscil kAmps[6], kFreqs[6], 101
        add8 oscil kAmps[7], kFreqs[7], 101
        
        add9  oscil kAmps[8], kFreqs[8], 101
        add10 oscil kAmps[9], kFreqs[9], 101
        add11 oscil kAmps[10], kFreqs[10], 101
        add12 oscil kAmps[11], kFreqs[11], 101
        
        aoutAdd sum add1*addEnv1,addEnv2*add2,addEnv3*add3,addEnv4*add4,addEnv5*add5,addEnv6*add6,addEnv7*add7,addEnv8*add8,addEnv9*add9,addEnv10*add10,addEnv11*add11,addEnv12*add12
    
    else
        aoutAdd=0
        
    endif
    
    ;------------------------- CONTROL DE INSTANCIAS Y MEDICION ------------------------- 
    
    ; Bloqueo de componente continua
    
    aout1 dcblock aout1
    aout1 dcblock aout1
    
    
    ; Control de envolvente general y atenuacion de resonancia en filtro
    
    kRelease release
    if (kRelease==1) then
        
        iMaxRel max iR1, iR2, iR3, iR4, iR5
        aEndEnv expon 1, iMaxRel, 0.00001
        kResEnv expon 1, iMaxRel, 0.00001
        kFilt1Res=kFilt1Res*kResEnv
        kFilt2Res=kFilt2Res*kResEnv
        aout1=aout1*aEndEnv
        aout2=aout2*aEndEnv
    endif
    
    ; Calculo de valores rms 
    
    krmsOut1 rms aout1
    krmsOut2 rms aout2
    krmsAdd rms aoutAdd
    
    ; Calculo de ganancia
    
    krmsOut1= ampdbfs(dbfsamp(krmsOut1)+kMainGain)
    krmsOut2= ampdbfs(dbfsamp(krmsOut2)+kMainGain)
    krmsAdd= ampdbfs(dbfsamp(krmsAdd)+kAddGain+kMainGain)
    
    ;printks "krmsOut1=%f, krmsOut2=%f, krmsAdd=%f\n", 0, krmsOut1, krmsOut2, krmsAdd
    
    ; Aplicacion de ganancia
    
    aout1 gain aout1, krmsOut1
    aout2 gain aout2, krmsOut2
    aoutAdd gain aoutAdd, krmsAdd
    
    ; Reverberacion
    
    kRvbSendAmt chnget "RvbSendAmt"
    
    aR=aout1*(1-kMainAMix)+aout2*(1-kMainBMix)+aoutAdd*(1-kMainCMix)
    aL=aout1*(kMainAMix)+aout2*(kMainBMix)+aoutAdd*(kMainCMix)
    
    ; Control de instancias
    
    kRcontrol rms aR
    kLcontrol rms aL
    
    kRcontrol = dbfsamp(kRcontrol)
    kLcontrol = dbfsamp(kLcontrol)
    
    if (kRcontrol <=-75 && kLcontrol <=-75 && kRelease==1) then
        turnoff
        kgoto end
    endif
    
    ;printks "kRDBFS=%f, kLDBFS=%f\n", 0, kRcontrol, kLcontrol
  
    ; Escritura en canales zak (envio de informacion a instrumentos 100 y 102)
    
    zawm    aR, 0
    zawm    aL, 1
    
    zkw kLFO1Amount ,0
    zkw kLFO1Wave   ,1
    
    zkw kLFO2Amount ,2
    zkw kLFO2Wave   ,3
    
    zkw kenv1 ,4
    zkw kenv2 ,5
    zkw kenv3 ,6
    zkw kenv4 ,7
    zkw kenv5 ,8
   
    end:
endin

instr 100 ; Instrumento de control y apariencia
     
     ; Lectura de canales zak
     
     kLFO1Amount  zkr 0
     kLFO1Wave    zkr 1
     kLFO2Amount  zkr 2
     kLFO2Wave    zkr 3
     
     kenv1 zkr 4
     kenv2 zkr 5
     kenv3 zkr 6
     kenv4 zkr 7
     kenv5 zkr 8   
     
     ;------------------------- OBTENER CANALES CABBAGE -------------------------
     
     ; Módulo oscilador
     
     kOsc1Wave     chnget    "Osc1Wave"
     kOsc2Wave     chnget    "Osc2Wave"
     kOsc3Wave     chnget    "Osc3Wave"
     kWTOsc1Wave   chnget    "WTOsc1Wave"
     kWTOsc2Wave   chnget    "WTOsc2Wave"
     kWTOsc3Wave   chnget    "WTOsc3Wave"
     
     kWTcontrol1   chnget    "WTcontrol1"
     kWTcontrol2   chnget    "WTcontrol2"
     kWTcontrol3   chnget    "WTcontrol3"
     
     kOsc1WTMod    chnget    "Osc1WTMod"
     kOsc2WTMod    chnget    "Osc2WTMod"
     kOsc3WTMod    chnget    "Osc3WTMod"
     
     kOsc1WTADSR   chnget    "Osc1WTADSR"
     kOsc2WTADSR   chnget    "Osc2WTADSR"
     kOsc3WTADSR   chnget    "Osc3WTADSR"
     
     kOsc1oct        chnget    "Osc1oct"
     kOsc2oct        chnget    "Osc2oct"
     kOsc3oct        chnget    "Osc3oct"
     
     kPitchControl1  chnget    "PitchControl1"
     kPitchControl2  chnget    "PitchControl2"
     kPitchControl3  chnget    "PitchControl3"
     
     kOsc1PitchADSR  chnget    "Osc1PitchADSR"
     kOsc2PitchADSR  chnget    "Osc2PitchADSR"
     kOsc3PitchADSR  chnget    "Osc3PitchADSR"
     
     kOsc1PitchMod   chnget    "Osc1PitchMod"
     kOsc2PitchMod   chnget    "Osc2PitchMod"
     kOsc3PitchMod   chnget    "Osc3PitchMod"
     
     ; Modulo LFO 
     
     kLFO2Locked   chnget    "LFO2Locked"
     kLFO1Shape    chnget    "LFO1Shape"
     kLFO2Shape    chnget    "LFO2Shape"
     
     ; Modulo de generador de envolvente
     
     kADSR1Act     chnget    "ADSR1Act"
     kADSR2Act     chnget    "ADSR2Act"
     kADSR3Act     chnget    "ADSR3Act"
     kADSR4Act     chnget    "ADSR4Act"
     kADSR5Act     chnget    "ADSR5Act"
     
     kADSR1Type    chnget    "ADSR1Type"
     kADSR2Type    chnget    "ADSR2Type"
     kADSR3Type    chnget    "ADSR3Type"
     kADSR4Type    chnget    "ADSR4Type"
     kADSR5Type    chnget    "ADSR5Type"
     
     kADSR2Filt1   chnget    "ADSR2Filt1"
     kADSR2Filt12  chnget    "ADSR2Filt12"
     kADSR2Mod     chnget    "ADSR2Mod"
     
     kADSR3Filt2   chnget    "ADSR3Filt2"
     kADSR3Filt12  chnget    "ADSR3Filt12"
     kADSR3Mod     chnget    "ADSR3Mod"

     kA1           chnget    "A1"
     kD1           chnget    "D1"
     kS1           chnget    "S1"
     kR1           chnget    "R1"
    
     kA2           chnget    "A2"
     kD2           chnget    "D2"
     kS2           chnget    "S2"
     kR2           chnget    "R2"
     
     kA3           chnget    "A3"
     kD3           chnget    "D3"
     kS3           chnget    "S3"
     kR3           chnget    "R3"
     
     kA4           chnget    "A4"
     kD4           chnget    "D4"
     kS4           chnget    "S4"
     kR4           chnget    "R4"
     
     kA5           chnget    "A5"
     kD5           chnget    "D5"
     kS5           chnget    "S5"
     kR5           chnget    "R5"
     
     ; Modulo de filtrado
     
     kFilt1Path1    chnget   "Filt1Path1"
     kFilt1Path2    chnget   "Filt1Path2"
     kFilt2Path1    chnget   "Filt2Path1"
     kFilt2Path2    chnget   "Filt2Path2"
     kFilt1KBD      chnget   "Filt1KBD"
     kFilt2KBD      chnget   "Filt2KBD"
     kFilt1Cutoff   chnget   "Filt1Cutoff"
     kFilt2Cutoff   chnget   "Filt2Cutoff"
     
     kFilter1Type1  chnget   "Filter1Type1"
     kFilter1Type2  chnget   "Filter1Type2"
     kFilter1Type3  chnget   "Filter1Type3"
     
     kFilter2Type1  chnget   "Filter2Type1"
     kFilter2Type2  chnget   "Filter2Type2"
     kFilter2Type3  chnget   "Filter2Type3"
     
     kFilter1LP6    chnget   "Filter1LP6"
     kFilter1LP12   chnget   "Filter1LP12"
     kFilter1LP18   chnget   "Filter1LP18"
     kFilter1LP24   chnget   "Filter1LP24"
     
     kFilter2LP6    chnget   "Filter2LP6"
     kFilter2LP12   chnget   "Filter2LP12"
     kFilter2LP18   chnget   "Filter2LP18"
     kFilter2LP24   chnget   "Filter2LP24"
          
     ; Modulador AR
     
     kAMWave        chnget  "AMWave"
     kRMWave        chnget  "RMWave"
     
     kOp2Mode       chnget  "Op2Mode"
     kOp3Mode       chnget  "Op3Mode"
     
     kOp2linkOp     chnget  "Op2linkOp"
     kOp2linkOsc    chnget  "Op2linkOsc"
     
     kOp3linkOp     chnget  "Op3linkOp"
     kOp3linkOsc    chnget  "Op3linkOsc"
     
     kFModType      chnget  "FModType"
     
     ; Modulo arpegiador
     
     kSeqRecord       chnget   "SeqRecord"
     kSeqRecord2      chnget   "SeqRecordKBD2"
     kSeqOsc1         chnget   "SeqOsc1"
     kSeqOsc2         chnget   "SeqOsc2"
     kSeqOsc3         chnget   "SeqOsc3"
     kSeqPattern      chnget   "SeqPattern"
     kSeqPatternKBD   chnget   "SeqPatternKBD"
     kSeqPlay         chnget   "SeqPlay"
     kArpeggiatorAct  chnget   "ArpeggiatorAct"
     
     ; Modulo de sintesis aditiva
     
     kAddButton1      chnget   "AddButton1"
     kAddButton2      chnget   "AddButton2"
     kAddButton3      chnget   "AddButton3"
    
     kAddAct          chnget   "AddAct"
     
     ; Modulo principal
     kMainPresets init 1
     SMainPresets chnget "MainPresets"
     
    ;------------------------- CONTROL APARIENCIA MODULADOR -------------------------
    
    ; Modulacion en amplitud
    
    if changed(kAMWave)==1 then
    reinit SEND_AM_SHAPE_VIEW
    SEND_AM_SHAPE_VIEW:
    ShapeAMAbove  sprintfk "AM_WAVE%d_ID", kAMWave+1
        ShapeAMUnder  sprintfk "AM_WAVE%d_ID", kAMWave-1
        ShapeAM sprintfk "AM_WAVE%d_ID", kAMWave
        chnset  "visible(1)", ShapeAM
        chnset  "visible(0)", ShapeAMAbove
        chnset  "visible(0)", ShapeAMUnder
    rireturn
    endif
    
    ; Modulacion en anillo
    
    if changed(kRMWave)==1 then
    reinit SEND_RM_SHAPE_VIEW
    SEND_RM_SHAPE_VIEW:
    ShapeRMAbove  sprintfk "RM_WAVE%d_ID", kRMWave+1
        ShapeRMUnder  sprintfk "RM_WAVE%d_ID", kRMWave-1
        ShapeRM sprintfk "RM_WAVE%d_ID", kRMWave
        chnset  "visible(1)", ShapeRM
        chnset  "visible(0)", ShapeRMAbove
        chnset  "visible(0)", ShapeRMUnder
    rireturn
    endif
    
    ; Modulacion en frecuencia/fase
    
    if changed(kFModType)==1 then
        if kFModType==1 then
            chnset "visible(1)", "OP1_FEEDBACK_ID"
            chnset "visible(1)", "OP2_FEEDBACK_ID"
            chnset "visible(1)", "OP3_FEEDBACK_ID"
        else
            chnset "visible(0)", "OP1_FEEDBACK_ID"
            chnset "visible(0)", "OP2_FEEDBACK_ID"
            chnset "visible(1)", "OP3_FEEDBACK_ID"
        endif
    endif
    
    if changed(kOp2Mode)==1 then
        if kOp2Mode==1 then
            chnset "visible(1)", "OP2_LINKOP_ID"
            chnset "visible(0)", "OP2_LINKOSC_ID"
        endif
        if kOp2Mode==0 then
            chnset "visible(0)", "OP2_LINKOP_ID"
            chnset "visible(1)", "OP2_LINKOSC_ID"
        endif
    endif  
    
    if changed(kOp3Mode)==1 then
        if kOp3Mode==1 then
            chnset "visible(1)", "OP3_LINKOP_ID"
            chnset "visible(0)", "OP3_LINKOSC_ID"
        endif
        if kOp3Mode==0 then
            chnset "visible(0)", "OP3_LINKOP_ID"
            chnset "visible(1)", "OP3_LINKOSC_ID"
        endif
    endif  
    
    ;------------------------- CONTROL APARIENCIA MODULO PRINCIPAL -------------------------
    
     kstatus, kchan, kNoteNum, kVel  midiin 
     ;printks "\nkstatus:%4.f. kchan:%4.f. kNoteNum:%4.f, kVel:%f",0.5 , kstatus,kchan, kNoteNum, kVel
     
     
     ; Luz eventos MIDI
     
     if(kstatus==144) then
         reinit SEND_MIDI_LIGHT
         SEND_MIDI_LIGHT:
         chnset "colour(0,200,0)", "MIDI_ID"
         rireturn
     endif
     if(kstatus==128) then
         chnset "colour(20, 20, 20)", "MIDI_ID"
     endif
     
     ; Medidor de instancias
     
     kvoices active 1
     kVoicesTrigger changed kvoices
     ;printks "\nkvoices:%4.f. ",0.5 , kvoices
     
     if kVoicesTrigger==1 then
     reinit SET_VOICES
     SET_VOICES:
        chnset i(kvoices), "Voices"
     rireturn
     endif     
     
    ;------------------------- CONTROL DE EVENTOS MIDI -------------------------     
     
     ; Redireccion al instrumento 1 (principal) o al 100 (arpegiador)
     
     if changed(kArpeggiatorAct)==1 then
        if kArpeggiatorAct==1 then
        reinit SET_MIDI_CHANNEL_OFF
        SET_MIDI_CHANNEL_OFF:
            massign 1,100
        rireturn
        endif

        if kArpeggiatorAct==0 then
        reinit SET_MIDI_CHANNEL_ON
        SET_MIDI_CHANNEL_ON:
            massign 1,1
        rireturn
        endif
     endif
    

    ;------------------------- APARIENCIA MODULO SINTESIS ADITIVA -------------------------  

    if changed(kAddButton2)==1 then

        chnset  "visible(0)", "ADD_GROUP1"
        chnset  "visible(1)", "ADD_GROUP2"
        chnset  "visible(0)", "ADD_GROUP3"
        
        chnset  "visible(0)", "ADD1_RATIO"
        chnset  "visible(0)", "ADD2_RATIO"
        chnset  "visible(0)", "ADD3_RATIO"
        chnset  "visible(0)", "ADD4_RATIO"
        
        chnset  "visible(1)", "ADD5_RATIO"
        chnset  "visible(1)", "ADD6_RATIO"
        chnset  "visible(1)", "ADD7_RATIO"
        chnset  "visible(1)", "ADD8_RATIO"
        
        chnset  "visible(0)", "ADD9_RATIO"
        chnset  "visible(0)", "ADD10_RATIO"
        chnset  "visible(0)", "ADD11_RATIO"
        chnset  "visible(0)", "ADD12_RATIO"
        
    endif
     
    if changed(kAddButton3)==1 then

        chnset  "visible(0)", "ADD_GROUP1"
        chnset  "visible(0)", "ADD_GROUP2"
        chnset  "visible(1)", "ADD_GROUP3"
        
        chnset  "visible(0)", "ADD1_RATIO"
        chnset  "visible(0)", "ADD2_RATIO"
        chnset  "visible(0)", "ADD3_RATIO"
        chnset  "visible(0)", "ADD4_RATIO"
        
        chnset  "visible(0)", "ADD5_RATIO"
        chnset  "visible(0)", "ADD6_RATIO"
        chnset  "visible(0)", "ADD7_RATIO"
        chnset  "visible(0)", "ADD8_RATIO"
        
        chnset  "visible(1)", "ADD9_RATIO"
        chnset  "visible(1)", "ADD10_RATIO"
        chnset  "visible(1)", "ADD11_RATIO"
        chnset  "visible(1)", "ADD12_RATIO"
        
    endif
         
    if changed(kAddButton1)==1 then

        chnset  "visible(1)", "ADD_GROUP1"
        chnset  "visible(0)", "ADD_GROUP2"
        chnset  "visible(0)", "ADD_GROUP3"
        
        chnset  "visible(1)", "ADD1_RATIO"
        chnset  "visible(1)", "ADD2_RATIO"
        chnset  "visible(1)", "ADD3_RATIO"
        chnset  "visible(1)", "ADD4_RATIO"
        chnset  "visible(1)", "ADD1_OCT"
        
        chnset  "visible(0)", "ADD5_RATIO"
        chnset  "visible(0)", "ADD6_RATIO"
        chnset  "visible(0)", "ADD7_RATIO"
        chnset  "visible(0)", "ADD8_RATIO"
        
        chnset  "visible(0)", "ADD9_RATIO"
        chnset  "visible(0)", "ADD10_RATIO"
        chnset  "visible(0)", "ADD11_RATIO"
        chnset  "visible(0)", "ADD12_RATIO"
        
    endif
     
    ;------------------------- APARIENCIA MODULO FILTRADO -------------------------  

    if changed(kFilter1Type2)==1 then
    
        if kFilter1Type2==1 then
            chnset k(0), "Filter1Type3"
            chnset "visible(0)", "PLANT_LP1OCT"
            chnset "visible(0)", "FILTER1_RES_ID"
            chnset "visible(0)", "FILTER1_RES_TEXT_ID"
            chnset "visible(0)", "FILTER1_ORDER_ID"
            chnset "visible(1)", "FILTER1_BANDWITH_ID"
            chnset "visible(1)", "FILTER1_BANDWITH_TEXT_ID"
            
        elseif kFilter1Type2==0 && kFilter1Type3==0 then
            chnset "visible(1)", "PLANT_LP1OCT"
            chnset "visible(1)", "FILTER1_RES_ID"
            chnset "visible(1)", "FILTER1_RES_TEXT_ID"
            chnset "visible(1)", "FILTER1_ORDER_ID"
            chnset "visible(0)", "FILTER1_BANDWITH_ID"
            chnset "visible(0)", "FILTER1_BANDWITH_TEXT_ID"
        endif
    endif
    
    if changed(kFilter1Type3)==1 then
    
        if kFilter1Type3==1 then
        
            chnset k(0), "Filter1Type2"
            chnset "visible(0)", "PLANT_LP1OCT"
            chnset "visible(0)", "FILTER1_RES_ID"
            chnset "visible(0)", "FILTER1_RES_TEXT_ID"
            chnset "visible(0)", "FILTER1_ORDER_ID"
            chnset "visible(0)", "FILTER1_BANDWITH_ID"
            chnset "visible(0)", "FILTER1_BANDWITH_TEXT_ID"
            
        elseif kFilter1Type3==0 && kFilter1Type2==0 then
            chnset "visible(1)", "PLANT_LP1OCT"
            chnset "visible(1)", "FILTER1_RES_ID"
            chnset "visible(1)", "FILTER1_RES_TEXT_ID"
            chnset "visible(1)", "FILTER1_ORDER_ID"

        endif
    endif
    
    if changed(kFilter2Type2)==1 then
    
        if kFilter2Type2==1 then
            chnset k(0), "Filter2Type3"
            chnset "visible(0)", "PLANT_LP2OCT"
            chnset "visible(0)", "FILTER2_RES_ID"
            chnset "visible(0)", "FILTER2_RES_TEXT_ID"
            chnset "visible(0)", "FILTER2_ORDER_ID"
            chnset "visible(1)", "FILTER2_BANDWITH_ID"
            chnset "visible(1)", "FILTER2_BANDWITH_TEXT_ID"
            
        elseif kFilter2Type2==0 && kFilter2Type3==0 then
            chnset "visible(1)", "PLANT_LP2OCT"
            chnset "visible(1)", "FILTER2_RES_ID"
            chnset "visible(1)", "FILTER2_RES_TEXT_ID"
            chnset "visible(1)", "FILTER2_ORDER_ID"
            chnset "visible(0)", "FILTER2_BANDWITH_ID"
            chnset "visible(0)", "FILTER2_BANDWITH_TEXT_ID"
        endif
    endif
    
    if changed(kFilter2Type3)==1 then
    
        if kFilter2Type3==1 then
        
            chnset k(0), "Filter2Type2"
            chnset "visible(0)", "PLANT_LP2OCT"
            chnset "visible(0)", "FILTER2_RES_ID"
            chnset "visible(0)", "FILTER2_RES_TEXT_ID"
            chnset "visible(0)", "FILTER2_ORDER_ID"
            chnset "visible(0)", "FILTER2_BANDWITH_ID"
            chnset "visible(0)", "FILTER2_BANDWITH_TEXT_ID"
            
        elseif kFilter2Type3==0 && kFilter2Type2==0 then
            chnset "visible(1)", "PLANT_LP2OCT"
            chnset "visible(1)", "FILTER2_ORDER_ID"
            chnset "visible(1)", "FILTER2_RES_ID"
            chnset "visible(1)", "FILTER2_RES_TEXT_ID"

        endif
    endif

    if changed(kFilt1Path1)==1 then
        
        if kFilt1Path1==kFilt1Path2 then
        
            chnset k(0), "Filt1Path2"
        
        endif
    endif
     
    if changed(kFilt1Path2)==1 then
        
        if kFilt1Path1==kFilt1Path2 then
        
            chnset k(0), "Filt1Path1"
        
        endif
        
        if (kFilt1Path2==1 && kFilt2Path1==1) then
        
            chnset k(0), "Filt2Path1"
            
        endif
             
    endif
   
    if changed(kFilt2Path1)==1 then
        
        if kFilt2Path1==kFilt2Path2 then
        
            chnset k(0), "Filt2Path2"
        
        endif
        
        if (kFilt1Path2==1 && kFilt2Path1==1) then
        
            chnset k(0), "Filt1Path2"
            
        endif
        
    endif
     
    if changed(kFilt2Path2)==1 then
        
        if kFilt2Path1==kFilt2Path2 then
        
            chnset k(0), "Filt2Path1"
        
        endif
    endif
    
     
    ;------------------------- APARIENCIA MODULO ENVOLVENTES -------------------------  

    if changed(kADSR2Act)==1 then
     
        chnset  "visible(0)", "ADSR1"
        chnset  "visible(1)", "ADSR2"
        chnset  "visible(0)", "ADSR3"
        chnset  "visible(0)", "ADSR4"
        chnset  "visible(0)", "ADSR5"
    endif 
     
    if changed(kADSR3Act)==1 then
     
        chnset  "visible(0)", "ADSR1"
        chnset  "visible(0)", "ADSR2"
        chnset  "visible(1)", "ADSR3"
        chnset  "visible(0)", "ADSR4"
        chnset  "visible(0)", "ADSR5"
            
    endif
    
    if changed(kADSR4Act)==1 then
     
        chnset  "visible(0)", "ADSR1"
        chnset  "visible(0)", "ADSR2"
        chnset  "visible(0)", "ADSR3"
        chnset  "visible(1)", "ADSR4"
        chnset  "visible(0)", "ADSR5"
            
    endif
    
    if changed(kADSR5Act)==1 then
     
        chnset  "visible(0)", "ADSR1"
        chnset  "visible(0)", "ADSR2"
        chnset  "visible(0)", "ADSR3"
        chnset  "visible(0)", "ADSR4"
        chnset  "visible(1)", "ADSR5"
            
    endif
    
    if changed(kADSR1Act)==1 then

        chnset  "visible(1)", "ADSR1"
        chnset  "visible(0)", "ADSR2"
        chnset  "visible(0)", "ADSR3"
        chnset  "visible(0)", "ADSR4"
        chnset  "visible(0)", "ADSR5"

    endif
        
    if (changed(kA1)==1 || changed(kD1)==1 || changed(kS1)==1 || changed(kR1)==1) || changed(kADSR1Type)==1 then
        
        if kADSR1Type==0 then
        
            reinit SEND_ADSR1_SHAPE1_VIEW
            SEND_ADSR1_SHAPE1_VIEW:
            
            ;prints "i(kD1)=%f",i(kD1)
            
            iA1=23+50*i(kA1)
            iD1=23+50*i(kD1)
            iR1=23+50*i(kR1)
            
            iS1 limit i(kS1), 0.0001,1
            
            i_  ftgen 300, 0, 512, 5, 0.0001, iA1, 1, iD1, 1*iS1,146,1*iS1, iR1, 0.0001
            
            chnset	"tablenumber(300)","ADSR1_Shape_ID"
            
            rireturn
            
        elseif kADSR1Type==1 then
            reinit SEND_ADSR1_SHAPE2_VIEW
            SEND_ADSR1_SHAPE2_VIEW:
            
            iA1=48+(50*i(kA1)-25)
            iD1=48+(50*i(kD1)-25)
            iR1=48+(50*i(kR1)-25)
            
            i_  ftgen 300, 0, 512, 7, 0.0001, iA1, 1, iD1, 1*i(kS1),146,1*i(kS1), iR1, 0
        
            chnset	"tablenumber(300)","ADSR1_Shape_ID"

            rireturn
        endif
    endif
     
    if (changed(kA2)==1 || changed(kD2)==1 || changed(kS2)==1 || changed(kR2)==1) || changed(kADSR2Type)==1 then
        
        if kADSR2Type==0 then
        
            reinit SEND_ADSR2_SHAPE1_VIEW
            SEND_ADSR2_SHAPE1_VIEW:
        
            iA2=23+50*i(kA2)
            iD2=23+50*i(kD2)
            iR2=23+50*i(kR2)
            
            iS2 limit i(kS2), 0.0001,1
            
            i_  ftgen 301, 0, 512, 5, 0.0001, iA2, 1, iD2, 1*iS2,146,1*iS2, iR2, 0.0001
            
            chnset	"tablenumber(301)","ADSR2_Shape_ID"
            rireturn
            
        elseif kADSR2Type==1 then
            reinit SEND_ADSR2_SHAPE2_VIEW
            SEND_ADSR2_SHAPE2_VIEW:
            
            iA2=48+(50*i(kA2)-25)
            iD2=48+(50*i(kD2)-25)
            iR2=48+(50*i(kR2)-25)
            
            i_  ftgen 301, 0, 512, 7, 0.0001, iA2, 1, iD2, 1*i(kS2),146,1*i(kS2), iR2, 0
        
            chnset	"tablenumber(301)","ADSR2_Shape_ID"

            rireturn
        endif
    endif
     
    if (changed(kA3)==1 || changed(kD3)==1 || changed(kS3)==1 || changed(kR3)==1 || changed(kADSR3Type)==1) then
        
        if kADSR3Type==0 then
        
            reinit SEND_ADSR3_SHAPE1_VIEW
            SEND_ADSR3_SHAPE1_VIEW:
        
            iA3=23+50*i(kA3)
            iD3=23+50*i(kD3)
            iR3=23+50*i(kR3)
            
            iS3 limit i(kS3), 0.0001,1
            
            i_  ftgen 302, 0, 512, 5, 0.0001, iA3, 1, iD3, 1*iS3,146,1*iS3, iR3, 0.0001
            
            chnset	"tablenumber(302)","ADSR3_Shape_ID"
            rireturn
            
        elseif kADSR3Type==1 then
            reinit SEND_ADSR3_SHAPE2_VIEW
            SEND_ADSR3_SHAPE2_VIEW:
            
            iA3=48+(50*i(kA3)-25)
            iD3=48+(50*i(kD3)-25)
            iR3=48+(50*i(kR3)-25)
            
            i_  ftgen 302, 0, 512, 7, 0.0001, iA3, 1, iD3, 1*i(kS3),146,1*i(kS3), iR3, 0
        
            chnset	"tablenumber(302)","ADSR3_Shape_ID"

            rireturn
        endif
    endif
    
    if (changed(kA4)==1 || changed(kD4)==1 || changed(kS4)==1 || changed(kR4)==1 || changed(kADSR4Type)==1) then
        
        if kADSR4Type==0 then
        
            reinit SEND_ADSR4_SHAPE1_VIEW
            SEND_ADSR4_SHAPE1_VIEW:
        
            iA4=23+50*i(kA4)
            iD4=23+50*i(kD4)
            iR4=23+50*i(kR4)
            
            iS4 limit i(kS4), 0.0001,1
            
            i_  ftgen 303, 0, 512, 5, 0.0001, iA4, 1, iD4, 1*iS4,146,1*iS4, iR4, 0.0001

            chnset	"tablenumber(303)","ADSR4_Shape_ID"
            rireturn
            
        elseif kADSR4Type==1 then
            reinit SEND_ADSR4_SHAPE2_VIEW
            SEND_ADSR4_SHAPE2_VIEW:
            
            iA4=48+(50*i(kA4)-25)
            iD4=48+(50*i(kD4)-25)
            iR4=48+(50*i(kR4)-25)
            
            i_  ftgen 303, 0, 512, 7, 0.0001, iA4, 1, iD4, 1*i(kS4),146,1*i(kS4), iR4, 0
        
            chnset	"tablenumber(303)","ADSR4_Shape_ID"

            rireturn
        endif
    endif
    
    if (changed(kA5)==1 || changed(kD5)==1 || changed(kS5)==1 || changed(kR5)==1 || changed(kADSR5Type)==1) then
        
        if kADSR5Type==0 then
        
            reinit SEND_ADSR5_SHAPE1_VIEW
            SEND_ADSR5_SHAPE1_VIEW:
        
            iA5=23+50*i(kA5)
            iD5=23+50*i(kD5)
            iR5=23+50*i(kR5)
            
            iS5 limit i(kS5), 0.0001,1
            
            i_  ftgen 304, 0, 512, 5, 0.0001, iA5, 1, iD5, 1*iS5,146,1*iS5, iR5, 0.0001

            chnset	"tablenumber(304)","ADSR5_Shape_ID"
            rireturn
            
        elseif kADSR5Type==1 then
            reinit SEND_ADSR5_SHAPE2_VIEW
            SEND_ADSR5_SHAPE2_VIEW:
            
            iA5=48+(50*i(kA5)-25)
            iD5=48+(50*i(kD5)-25)
            iR5=48+(50*i(kR5)-25)
            
            i_  ftgen 304, 0, 512, 7, 0.0001, iA5, 1, iD5, 1*i(kS5),146,1*i(kS5), iR5, 0
        
            chnset	"tablenumber(304)","ADSR5_Shape_ID"

            rireturn
        endif
    endif

    ;------------------------- APARIENCIA MODULO LFO -------------------------  
     
    if changed(kLFO2Locked)==1 then
     
        if kLFO2Locked==1 then
        
            chnset "visible(1)", "LFO2_RATE2_ID"
            chnset "visible(0)", "LFO2_RATE1_ID"
            chnset "visible(1)", "LFO2_PHASE_ID"
        else
        
            chnset "visible(0)", "LFO2_RATE2_ID"
            chnset "visible(1)", "LFO2_RATE1_ID"
            chnset "visible(0)", "LFO2_PHASE_ID"
            
        endif
    endif
    
    if changed(kLFO1Shape)==1 then
    reinit SEND_LFO1_SHAPE_VIEW
    SEND_LFO1_SHAPE_VIEW:        
        
        SWaveLFO1Above  sprintfk "LFO1_WAVE%d_ID", kLFO1Shape+1
        SWaveLFO1Under  sprintfk "LFO1_WAVE%d_ID", kLFO1Shape-1
        SWaveLFO1 sprintfk "LFO1_WAVE%d_ID", kLFO1Shape
        chnset  "visible(1)", SWaveLFO1
        chnset  "visible(0)", SWaveLFO1Above
        chnset  "visible(0)", SWaveLFO1Under 
    rireturn
    endif
    
    if changed(kLFO2Shape)==1 then
    reinit SEND_LFO2_SHAPE_VIEW
    SEND_LFO2_SHAPE_VIEW:        
        
        SWaveLFO2Above  sprintfk "LFO2_WAVE%d_ID", kLFO2Shape+1
        SWaveLFO2Under  sprintfk "LFO2_WAVE%d_ID", kLFO2Shape-1
        SWaveLFO2 sprintfk "LFO2_WAVE%d_ID", kLFO2Shape
        chnset  "visible(1)", SWaveLFO2
        chnset  "visible(0)", SWaveLFO2Above
        chnset  "visible(0)", SWaveLFO2Under 
    rireturn
    endif

    ;------------------------- APARIENCIA Y CONTROL MODULO OSCILADOR -------------------------  
    
    
    if changed(kOsc1WTADSR)==1 && kOsc1WTADSR !=0 then
    reinit OSC1_WTKNOB_CONTROL
    OSC1_WTKNOB_CONTROL:     
        chnset  "visible(0)", "OSC1_WTKNOB_ID"
    rireturn
    elseif changed(kOsc1WTADSR)==1 && kOsc1WTADSR =0 then
    reinit OSC1_WTKNOB_CONTROL
    OSC1_WTKNOB_CONTROL:     
        chnset  "visible(1)", "OSC1_WTKNOB_ID"
    rireturn
    endif
    
    if changed(kOsc2WTADSR)==1 && kOsc2WTADSR !=0 then
    reinit OSC2_WTKNOB_CONTROL
    OSC2_WTKNOB_CONTROL:     
        chnset  "visible(0)", "OSC2_WTKNOB_ID"
    rireturn
    elseif changed(kOsc2WTADSR)==1 && kOsc2WTADSR =0 then
    reinit OSC2_WTKNOB_CONTROL
    OSC2_WTKNOB_CONTROL:     
        chnset  "visible(1)", "OSC2_WTKNOB_ID"
    rireturn
    endif
    
    if changed(kOsc3WTADSR)==1 && kOsc3WTADSR !=0 then
    reinit OSC3_WTKNOB_CONTROL
    OSC3_WTKNOB_CONTROL:     
        chnset  "visible(0)", "OSC3_WTKNOB_ID"
    rireturn
    elseif changed(kOsc3WTADSR)==1 && kOsc3WTADSR =0 then
    reinit OSC3_WTKNOB_CONTROL
    OSC3_WTKNOB_CONTROL:     
        chnset  "visible(1)", "OSC3_WTKNOB_ID"
    rireturn
    endif
    
    
    ; Calculo de frecuencia para el control de aliasing
    
    kOct1 pow 2, kOsc1oct
    kOct2 pow 2, kOsc2oct
    kOct3 pow 2, kOsc3oct
    
    kosc1cps = cpsmidinn(kNoteNum)*kOct1*cent(kPitchControl1*100)
    kosc2cps = cpsmidinn(kNoteNum)*kOct2*cent(kPitchControl2*100)
    kosc3cps = cpsmidinn(kNoteNum)*kOct3*cent(kPitchControl3*100)
    
    kosc1cps limit kosc1cps, 20, sr/2
    kosc2cps limit kosc2cps, 20, sr/2
    kosc3cps limit kosc3cps, 20, sr/2
    
    if(kOsc1PitchADSR==1) then
       kosc1cps=kosc1cps*kenv1
    elseif(kOsc1PitchADSR==2) then
       kosc1cps=kosc1cps*kenv2
    elseif(kOsc1PitchADSR==3) then
       kosc1cps=kosc1cps*kenv3
    elseif(kOsc1PitchADSR==4) then
       kosc1cps=kosc1cps*kenv4
    elseif(kOsc1PitchADSR==5) then
       kosc1cps=kosc1cps*kenv5
    endif
    
    if(kOsc2PitchADSR==1) then
       kosc2cps=kosc2cps*kenv1
    elseif(kOsc2PitchADSR==2) then
       kosc2cps=kosc2cps*kenv2
    elseif(kOsc2PitchADSR==3) then
       kosc2cps=kosc2cps*kenv3
    elseif(kOsc2PitchADSR==4) then
       kosc2cps=kosc2cps*kenv4
    elseif(kOsc2PitchADSR==5) then
       kosc2cps=kosc2cps*kenv5
    endif
    
    if(kOsc3PitchADSR==1) then
       kosc3cps=kosc3cps*kenv1
    elseif(kOsc3PitchADSR==2) then
       kosc3cps=kosc3cps*kenv2
    elseif(kOsc3PitchADSR==3) then
       kosc3cps=kosc3cps*kenv3
    elseif(kOsc3PitchADSR==4) then
       kosc3cps=kosc3cps*kenv4
    elseif(kOsc3PitchADSR==5) then
       kosc3cps=kosc3cps*kenv5
    endif
    
    if(kOsc1PitchMod==1) then
       kosc1cps=kosc1cps*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc1PitchMod==2) then
       kosc1cps=kosc1cps*cent(kLFO2Wave*kLFO2Amount*3*100)
    endif
    
    if(kOsc2PitchMod==1) then
       kosc2cps=kosc2cps*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc2PitchMod==2) then
       kosc2cps=kosc2cps*cent(kLFO2Wave*kLFO2Amount*3*100)
    endif
    
    if(kOsc3PitchMod==1) then
       kosc3cps=kosc3cps*cent(kLFO1Wave*kLFO1Amount*3*100)
    elseif(kOsc3PitchMod==2) then
       kosc3cps=kosc3cps*cent(kLFO2Wave*kLFO2Amount*3*100) 
    endif
    
    
    ; Control de WT mediante envolvente
    
    if kOsc1WTADSR==1 then
        kWTcontrol1=kenv1
    elseif kOsc1WTADSR==2 then
        kWTcontrol1=kenv2
    elseif kOsc1WTADSR==3 then
        kWTcontrol1=kenv3
    elseif kOsc1WTADSR==4 then
        kWTcontrol1=kenv4
    elseif kOsc1WTADSR==5 then
        kWTcontrol1=kenv5
    else
        kWTcontrol1=kWTcontrol1
    endif
    
    if kOsc2WTADSR==1 then
        kWTcontrol2=kenv1
    elseif kOsc2WTADSR==2 then
        kWTcontrol2=kenv2
    elseif kOsc2WTADSR==3 then
        kWTcontrol2=kenv3
    elseif kOsc2WTADSR==4 then
        kWTcontrol2=kenv4
    elseif kOsc2WTADSR==5 then
        kWTcontrol2=kenv5
    else
        kWTcontrol2=kWTcontrol2
    endif
    
    if kOsc3WTADSR==1 then
        kWTcontrol3=kenv1
    elseif kOsc3WTADSR==2 then
        kWTcontrol3=kenv2
    elseif kOsc3WTADSR==3 then
        kWTcontrol3=kenv3
    elseif kOsc3WTADSR==4 then
        kWTcontrol3=kenv4
    elseif kOsc3WTADSR==5 then
        kWTcontrol3=kenv5
    else
        kWTcontrol3=kWTcontrol3
    endif

    kwft init 0
    
    
    ; Apariencia display y control de forma de onda
    
    ; Forma de onda 1
    
    if changed(kOsc1Wave)==1 || changed(kosc1cps)==1 then
    reinit SEND_OSC1_SHAPE_VIEW
    SEND_OSC1_SHAPE_VIEW:
    
        if(kOsc1Wave==1) then
            kwft=101
        elseif(kOsc1Wave==2) then
            kwft vco2ft kosc1cps, 0
        elseif(kOsc1Wave==3) then
            kwft vco2ft kosc1cps, 3
        elseif(kOsc1Wave==4) then
            kwft vco2ft kosc1cps, -103
        elseif(kOsc1Wave==5) then
            kwft vco2ft kosc1cps, -104
        elseif(kOsc1Wave==6) then
            kwft vco2ft kosc1cps, 4
        elseif(kOsc1Wave==7) then
            kwft vco2ft kosc1cps, -105
        elseif(kOsc1Wave==8) then
            kwft vco2ft kosc1cps, -106
        elseif(kOsc1Wave==9) then
            kwft vco2ft kosc1cps, -107
        elseif(kOsc1Wave==10) then
            kwft vco2ft kosc1cps, -108
        elseif(kOsc1Wave==11) then
            kwft vco2ft kosc1cps, -109
        elseif(kOsc1Wave==12) then
            kwft vco2ft kosc1cps, -110
        elseif(kOsc1Wave==13) then
            kwft vco2ft kosc1cps, -111
        elseif(kOsc1Wave==14) then
            kwft vco2ft kosc1cps, -112
        else
            kwft=101
        endif 
        
        tablecopy 100, kwft
        tablew kwft,0,200
        
        chnset		"tablenumber(100)","OSC1Shape_ID"
        chnset kWTcontrol1+0.0000000000000001, "WTcontrol1"

        chnset  "visible(0)", "OSC1_WAVE1_ID"
        chnset  "visible(0)", "OSC1_WAVE2_ID"
        chnset  "visible(0)", "OSC1_WAVE3_ID"
        chnset  "visible(0)", "OSC1_WAVE4_ID"
        chnset  "visible(0)", "OSC1_WAVE5_ID"
        chnset  "visible(0)", "OSC1_WAVE6_ID"
        chnset  "visible(0)", "OSC1_WAVE7_ID"
        chnset  "visible(0)", "OSC1_WAVE8_ID"
        chnset  "visible(0)", "OSC1_WAVE9_ID"
        chnset  "visible(0)", "OSC1_WAVE10_ID"
        chnset  "visible(0)", "OSC1_WAVE11_ID"
        chnset  "visible(0)", "OSC1_WAVE12_ID"
        ShapeOsc1 sprintfk "OSC1_WAVE%d_ID", kOsc1Wave
        chnset  "visible(1)", ShapeOsc1
        
    rireturn
    endif
     
    if changed(kOsc2Wave)==1 || changed(kosc2cps)==1 then
    reinit SEND_OSC2_SHAPE_VIEW
    SEND_OSC2_SHAPE_VIEW:
    
        if(kOsc2Wave==1) then
            kw2ft=101
        elseif(kOsc2Wave==2) then
            kw2ft vco2ft kosc2cps, 0
        elseif(kOsc2Wave==3) then
            kw2ft vco2ft kosc2cps, 3
        elseif(kOsc2Wave==4) then
            kw2ft vco2ft kosc2cps, -103
        elseif(kOsc2Wave==5) then
            kw2ft vco2ft kosc2cps, -104
        elseif(kOsc2Wave==6) then
            kw2ft vco2ft kosc2cps, 4
        elseif(kOsc2Wave==7) then
            kw2ft vco2ft kosc2cps, -105
        elseif(kOsc2Wave==8) then
            kw2ft vco2ft kosc2cps, -106
        elseif(kOsc2Wave==9) then
            kw2ft vco2ft kosc2cps, -107
        elseif(kOsc2Wave==10) then
            kw2ft vco2ft kosc2cps, -108
        elseif(kOsc2Wave==11) then
            kw2ft vco2ft kosc2cps, -109
        elseif(kOsc2Wave==12) then
            kw2ft vco2ft kosc2cps, -110
        elseif(kOsc2Wave==13) then
            kw2ft vco2ft kosc2cps, -111
        elseif(kOsc2Wave==14) then
            kw2ft vco2ft kosc2cps, -112
        else
            kw2ft=101
        endif 
            
        tablecopy 100, kw2ft
        tablew kw2ft,0,202

        chnset		"tablenumber(100)","OSC2Shape_ID"
        chnset kWTcontrol2+0.0000000000000001, "WTcontrol2"

        chnset  "visible(0)", "OSC2_WAVE1_ID"
        chnset  "visible(0)", "OSC2_WAVE2_ID"
        chnset  "visible(0)", "OSC2_WAVE3_ID"
        chnset  "visible(0)", "OSC2_WAVE4_ID"
        chnset  "visible(0)", "OSC2_WAVE5_ID"
        chnset  "visible(0)", "OSC2_WAVE6_ID"
        chnset  "visible(0)", "OSC2_WAVE7_ID"
        chnset  "visible(0)", "OSC2_WAVE8_ID"
        chnset  "visible(0)", "OSC2_WAVE9_ID"
        chnset  "visible(0)", "OSC2_WAVE10_ID"
        chnset  "visible(0)", "OSC2_WAVE11_ID"
        chnset  "visible(0)", "OSC2_WAVE12_ID"
        SLightOsc2 sprintfk "OSC2_WAVE%d_ID", kOsc2Wave
        chnset  "visible(1)", SLightOsc2
        
    rireturn
    endif
     
    if changed(kOsc3Wave)==1 || changed(kosc3cps)==1 then
    reinit SEND_OSC3_SHAPE_VIEW
    SEND_OSC3_SHAPE_VIEW:
    
        if(kOsc3Wave==1) then
            kw3ft=101
        elseif(kOsc3Wave==2) then
            kw3ft vco2ft kosc3cps, 0
        elseif(kOsc3Wave==3) then
            kw3ft vco2ft kosc3cps, 3
        elseif(kOsc3Wave==4) then
            kw3ft vco2ft kosc3cps, -103
        elseif(kOsc3Wave==5) then
            kw3ft vco2ft kosc3cps, -104
        elseif(kOsc3Wave==6) then
            kw3ft vco2ft kosc3cps, 4
        elseif(kOsc3Wave==7) then
            kw3ft vco2ft kosc3cps, -105
        elseif(kOsc3Wave==8) then
            kw3ft vco2ft kosc3cps, -106
        elseif(kOsc3Wave==9) then
            kw3ft vco2ft kosc3cps, -107
        elseif(kOsc3Wave==10) then
            kw3ft vco2ft kosc3cps, -108
        elseif(kOsc3Wave==11) then
            kw3ft vco2ft kosc3cps, -109
        elseif(kOsc3Wave==12) then
            kw3ft vco2ft kosc3cps, -110
        elseif(kOsc3Wave==13) then
            kw3ft vco2ft kosc3cps, -111
        elseif(kOsc3Wave==14) then
            kw3ft vco2ft kosc3cps, -112
        else
            kw3ft=101
        endif 
        
        tablecopy 100, kw3ft
        tablew kw3ft,0,204
        
        chnset		"tablenumber(100)","OSC3Shape_ID"
        chnset kWTcontrol3+0.0000000000000001, "WTcontrol3"

        chnset  "visible(0)", "OSC3_WAVE1_ID"
        chnset  "visible(0)", "OSC3_WAVE2_ID"
        chnset  "visible(0)", "OSC3_WAVE3_ID"
        chnset  "visible(0)", "OSC3_WAVE4_ID"
        chnset  "visible(0)", "OSC3_WAVE5_ID"
        chnset  "visible(0)", "OSC3_WAVE6_ID"
        chnset  "visible(0)", "OSC3_WAVE7_ID"
        chnset  "visible(0)", "OSC3_WAVE8_ID"
        chnset  "visible(0)", "OSC3_WAVE9_ID"
        chnset  "visible(0)", "OSC3_WAVE10_ID"
        chnset  "visible(0)", "OSC3_WAVE11_ID"
        chnset  "visible(0)", "OSC3_WAVE12_ID"
        SLightOsc3 sprintfk "OSC3_WAVE%d_ID", kOsc3Wave
        chnset  "visible(1)", SLightOsc3
        
    rireturn
    endif
    
     ; Forma de onda 2
    
    if changed(kWTOsc1Wave)==1 || changed(kosc1cps)==1 then
    reinit SEND_MOSC1_SHAPE_VIEW
    SEND_MOSC1_SHAPE_VIEW:
        
        if(kWTOsc1Wave==1) then
            kwt1ft=101
        elseif(kWTOsc1Wave==2) then
            kwt1ft vco2ft kosc1cps, 0
        elseif(kWTOsc1Wave==3) then
            kwt1ft vco2ft kosc1cps, 3
        elseif(kWTOsc1Wave==4) then
            kwt1ft vco2ft kosc1cps, -103
        elseif(kWTOsc1Wave==5) then
            kwt1ft vco2ft kosc1cps, -104
        elseif(kWTOsc1Wave==6) then
            kwt1ft vco2ft kosc1cps, 4
        elseif(kWTOsc1Wave==7) then
            kwt1ft vco2ft kosc1cps, -105
        elseif(kWTOsc1Wave==8) then
            kwt1ft vco2ft kosc1cps, -106
        elseif(kWTOsc1Wave==9) then
            kwt1ft vco2ft kosc1cps, -107
        elseif(kWTOsc1Wave==10) then
            kwt1ft vco2ft kosc1cps, -108
        elseif(kWTOsc1Wave==11) then
            kwt1ft vco2ft kosc1cps, -109
        elseif(kWTOsc1Wave==12) then
            kwt1ft vco2ft kosc1cps, -110
        elseif(kWTOsc1Wave==13) then
            kwt1ft vco2ft kosc1cps, -111
        elseif(kWTOsc1Wave==14) then
            kwt1ft vco2ft kosc1cps, -112
        else
            kwt1ft=101
        endif 
        
        tablecopy 100, kwt1ft
        tablew kwt1ft,1,200
        chnset		"tablenumber(100)","WTOSC1_Shape_ID"
        chnset kWTcontrol1-0.0000000000000001, "WTcontrol1"
        
        chnset  "visible(0)", "WTOSC1_WAVE1_ID"
        chnset  "visible(0)", "WTOSC1_WAVE2_ID"
        chnset  "visible(0)", "WTOSC1_WAVE3_ID"
        chnset  "visible(0)", "WTOSC1_WAVE4_ID"
        chnset  "visible(0)", "WTOSC1_WAVE5_ID"
        chnset  "visible(0)", "WTOSC1_WAVE6_ID"
        chnset  "visible(0)", "WTOSC1_WAVE7_ID"
        chnset  "visible(0)", "WTOSC1_WAVE8_ID"
        chnset  "visible(0)", "WTOSC1_WAVE9_ID"
        chnset  "visible(0)", "WTOSC1_WAVE10_ID"
        chnset  "visible(0)", "WTOSC1_WAVE11_ID"
        chnset  "visible(0)", "WTOSC1_WAVE12_ID"
        SLightWTOsc1 sprintfk "WTOSC1_WAVE%d_ID", kWTOsc1Wave
        chnset  "visible(1)", SLightWTOsc1
        
    rireturn
    endif
     
    if changed(kWTOsc2Wave)==1 || changed(kosc2cps)==1 then
    reinit SEND_MOSC2_SHAPE_VIEW
    SEND_MOSC2_SHAPE_VIEW:
        
        if(kWTOsc2Wave==1) then
            kwt2ft=101
        elseif(kWTOsc2Wave==2) then
            kwt2ft vco2ft kosc2cps, 0
        elseif(kWTOsc2Wave==3) then
            kwt2ft vco2ft kosc2cps, 3
        elseif(kWTOsc2Wave==4) then
            kwt2ft vco2ft kosc2cps, -103
        elseif(kWTOsc2Wave==5) then
            kwt2ft vco2ft kosc2cps, -104
        elseif(kWTOsc2Wave==6) then
            kwt2ft vco2ft kosc2cps, 4
        elseif(kWTOsc2Wave==7) then
            kwt2ft vco2ft kosc2cps, -105
        elseif(kWTOsc2Wave==8) then
            kwt2ft vco2ft kosc2cps, -106
        elseif(kWTOsc2Wave==9) then
            kwt2ft vco2ft kosc2cps, -107
        elseif(kWTOsc2Wave==10) then
            kwt2ft vco2ft kosc2cps, -108
        elseif(kWTOsc2Wave==11) then
            kwt2ft vco2ft kosc2cps, -109
        elseif(kWTOsc2Wave==12) then
            kwt2ft vco2ft kosc2cps, -110
        elseif(kWTOsc2Wave==13) then
            kwt2ft vco2ft kosc2cps, -111
        elseif(kWTOsc2Wave==14) then
            kwt2ft vco2ft kosc2cps, -112
        else
            kwt2ft=101
        endif 
        
        tablecopy 100, kwt2ft
        tablew kwt2ft,1,202
        chnset		"tablenumber(100)","WTOSC2_Shape_ID"
        chnset kWTcontrol2-0.0000000000000001, "WTcontrol2"

        chnset  "visible(0)", "WTOSC2_WAVE1_ID"
        chnset  "visible(0)", "WTOSC2_WAVE2_ID"
        chnset  "visible(0)", "WTOSC2_WAVE3_ID"
        chnset  "visible(0)", "WTOSC2_WAVE4_ID"
        chnset  "visible(0)", "WTOSC2_WAVE5_ID"
        chnset  "visible(0)", "WTOSC2_WAVE6_ID"
        chnset  "visible(0)", "WTOSC2_WAVE7_ID"
        chnset  "visible(0)", "WTOSC2_WAVE8_ID"
        chnset  "visible(0)", "WTOSC2_WAVE9_ID"
        chnset  "visible(0)", "WTOSC2_WAVE10_ID"
        chnset  "visible(0)", "WTOSC2_WAVE11_ID"
        chnset  "visible(0)", "WTOSC2_WAVE12_ID"
        SLightWTOsc2 sprintfk "WTOSC2_WAVE%d_ID", kWTOsc2Wave
        chnset  "visible(1)", SLightWTOsc2
        
    rireturn
    endif
     
    if changed(kWTOsc3Wave)==1 || changed(kosc3cps)==1 then
    reinit SEND_MOSC3_SHAPE_VIEW
    SEND_MOSC3_SHAPE_VIEW:
        
        if(kWTOsc3Wave==1) then
            kwt3ft=101
        elseif(kWTOsc3Wave==2) then
            kwt3ft vco2ft kosc3cps, 0
        elseif(kWTOsc3Wave==3) then
            kwt3ft vco2ft kosc3cps, 3
        elseif(kWTOsc3Wave==4) then
            kwt3ft vco2ft kosc3cps, -103
        elseif(kWTOsc3Wave==5) then
            kwt3ft vco2ft kosc3cps, -104
        elseif(kWTOsc3Wave==6) then
            kwt3ft vco2ft kosc3cps, 4
        elseif(kWTOsc3Wave==7) then
            kwt3ft vco2ft kosc3cps, -105
        elseif(kWTOsc3Wave==8) then
            kwt3ft vco2ft kosc3cps, -106
        elseif(kWTOsc3Wave==9) then
            kwt3ft vco2ft kosc3cps, -107
        elseif(kWTOsc3Wave==10) then
            kwt3ft vco2ft kosc3cps, -108
        elseif(kWTOsc3Wave==11) then
            kwt3ft vco2ft kosc3cps, -109
        elseif(kWTOsc3Wave==12) then
            kwt3ft vco2ft kosc3cps, -110
        elseif(kWTOsc3Wave==13) then
            kwt3ft vco2ft kosc3cps, -111
        elseif(kWTOsc3Wave==14) then
            kwt3ft vco2ft kosc3cps, -112
        else
            kwt3ft=101
        endif 
        
        tablecopy 100, 100+kWTOsc3Wave
        tablew 100+kWTOsc3Wave,1,204
        chnset		"tablenumber(100)","WTOSC3_Shape_ID"
        chnset kWTcontrol3-0.0000000000000001, "WTcontrol3"
        
        chnset  "visible(0)", "WTOSC3_WAVE1_ID"
        chnset  "visible(0)", "WTOSC3_WAVE2_ID"
        chnset  "visible(0)", "WTOSC3_WAVE3_ID"
        chnset  "visible(0)", "WTOSC3_WAVE4_ID"
        chnset  "visible(0)", "WTOSC3_WAVE5_ID"
        chnset  "visible(0)", "WTOSC3_WAVE6_ID"
        chnset  "visible(0)", "WTOSC3_WAVE7_ID"
        chnset  "visible(0)", "WTOSC3_WAVE8_ID"
        chnset  "visible(0)", "WTOSC3_WAVE9_ID"
        chnset  "visible(0)", "WTOSC3_WAVE10_ID"
        chnset  "visible(0)", "WTOSC3_WAVE11_ID"
        chnset  "visible(0)", "WTOSC3_WAVE12_ID"
        SLightWTOsc3 sprintfk "WTOSC3_WAVE%d_ID", kWTOsc3Wave
        chnset  "visible(1)", SLightWTOsc3
        
    rireturn
    endif
    
    ; Actualizacion constante de displays 
    
    if changed(kWTcontrol1)==1 then
     
    reinit SEND_OUTOSC1_SHAPE_VIEW
    SEND_OUTOSC1_SHAPE_VIEW:  
        chnset	"tablenumber(201)","OUTOSC1_Shape_ID"
    rireturn
    endif
     
    if changed(kWTcontrol2)==1 then
      
    reinit SEND_OUTOSC2_SHAPE_VIEW
    SEND_OUTOSC2_SHAPE_VIEW:  
        chnset	"tablenumber(203)","OUTOSC2_Shape_ID"
    rireturn
    endif
     
    if changed(kWTcontrol3)==1 then
      
    reinit SEND_OUTOSC3_SHAPE_VIEW
    SEND_OUTOSC3_SHAPE_VIEW:  
        chnset	"tablenumber(205)","OUTOSC3_Shape_ID"
    rireturn
    endif
    
    ; Calculo interpolacion entre formas de onda       
        
    if (kOsc1WTMod==1) then
        kWTcontrol1 limit kWTcontrol1+(kLFO1Wave/2)*kLFO1Amount, k(0), k(1)
        ftmorf kWTcontrol1, 200, 201    
    elseif (kOsc1WTMod==2) then
        kWTcontrol1 limit kWTcontrol1+(kLFO2Wave/2)*kLFO2Amount, k(0), k(1)
        ftmorf kWTcontrol1, 200, 201 
    else
        kWTcontrol1=kWTcontrol1
        ftmorf kWTcontrol1, 200, 201 
    endif
    
    if (kOsc2WTMod==1) then
        kWTcontrol2 limit kWTcontrol2+(kLFO1Wave/2)*kLFO1Amount, k(0), k(1)
        ftmorf kWTcontrol2, 202, 203
    elseif (kOsc2WTMod==2) then
        kWTcontrol2 limit kWTcontrol2+(kLFO2Wave/2)*kLFO2Amount, k(0), k(1)
        ftmorf kWTcontrol2, 202, 203
    else
        kWTcontrol2=kWTcontrol2
        ftmorf kWTcontrol2, 202, 203
    endif
    
    if (kOsc3WTMod==1) then
        kWTcontrol3 limit kWTcontrol3+(kLFO1Wave/2)*kLFO1Amount, k(0), k(1)
        ftmorf kWTcontrol3, 204, 205
    elseif (kOsc3WTMod==2) then
        kWTcontrol3 limit kWTcontrol3+(kLFO2Wave/2)*kLFO2Amount, k(0), k(1)
        ftmorf kWTcontrol3, 204, 205
    else
        kWTcontrol3=kWTcontrol3
        ftmorf kWTcontrol3, 204, 205
    endif  
    
endin

instr 101 ; Modulo arpegiador
    
     ;------------------------- OBTENER CANALES CABBAGE -------------------------
         
    kArpeggiatorAct  chnget  "ArpeggiatorAct"
    kArpHold         chnget  "ArpHold"
    kArpSubAct       chnget  "ArpSubAct"
    kArpDirection    chnget  "ArpDirection"
    kArpSteps        chnget  "ArpSteps"
    kArpOctRange     chnget  "ArpOctRange"
    kArpRate         chnget  "ArpRate"
    kArpGate         chnget  "ArpGate"
    
    kVel[]   init 9
    kPitch[] init 9
    
    kVel[1]   chnget  "ArpVelKnob1"
    kVel[2]   chnget  "ArpVelKnob2"
    kVel[3]   chnget  "ArpVelKnob3"
    kVel[4]   chnget  "ArpVelKnob4"
    kVel[5]   chnget  "ArpVelKnob5"
    kVel[6]   chnget  "ArpVelKnob6"
    kVel[7]   chnget  "ArpVelKnob7"
    kVel[8]   chnget  "ArpVelKnob8"
    
    kPitch[1]   chnget  "ArpPitchKnob1"
    kPitch[2]   chnget  "ArpPitchKnob2"
    kPitch[3]   chnget  "ArpPitchKnob3"
    kPitch[4]   chnget  "ArpPitchKnob4"
    kPitch[5]   chnget  "ArpPitchKnob5"
    kPitch[6]   chnget  "ArpPitchKnob6"
    kPitch[7]   chnget  "ArpPitchKnob7"
    kPitch[8]   chnget  "ArpPitchKnob8"

    ;------------------------- INICIALIZACIONES Y PREPARACION DE VARIABLES -------------------------
        
    kPlayNote       init 0
    kArpStepCounter init 1
    kfind           init 0
    kOctCounter     init 0
    
    kstatus, kchan, kNoteNum, kVelm  midiin ; Recibir eventos MIDI (solo se recibirán cuando se active el arpegiador)
    
    kTriggerMidi  changed  kstatus, kchan, kNoteNum, kVelm 
    
    if changed(kArpeggiatorAct)==1 && kArpeggiatorAct==1 then
    
    reinit REINIT_ARPEGGIATOR
        REINIT_ARPEGGIATOR:
        gkNotes[] init 16
        gkNotes[] fillarray 200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200
        kNotes[] init 1
        kNoteCounter=0
        kPlayNote=0
    rireturn
    
    endif 
    
    if changed(kArpHold)==1 && kArpHold==0 then
        
        reinit REINIT_ARPEGGIATOR
        kNoteCounter=0
          
    endif 
    
    ;------------------------- COMIENZO DEL PROCESADO -------------------------
    
    if(kArpeggiatorAct==1) then
        
        kLen lenarray gkNotes
        
        if ((kTriggerMidi == 1) && (kstatus ==144)) then  ; Si se introduce una nota nueva, se busca si ya existe en el array de notas
        
            kSearchCounter=0

            ;printks "gkNotesADD[%f]:%4.f\n",0,kNoteCounter, gkNotes[kNoteCounter
            
            while kfind==0 do
            
                if (kNoteNum==gkNotes[kSearchCounter]) then  ; Se encuentra
                    kfind=1
                endif
                
                if(kSearchCounter>=kLen-1) then  ; No se encuentra
                    kfind=2
                endif
                
                kSearchCounter=kSearchCounter+1
            od
            
            if kfind==2 then ; Solo se añade si no se encuentra en el array de notas
                
            gkNotes[kNoteCounter]=kNoteNum
            kNoteCounter=kNoteCounter+1 
                
            endif
            kfind=0
            
        endif
        
        if ((kTriggerMidi == 1) && (kstatus ==128)) && kArpHold!=1 then  ; Si se deja de pulsar una nota y Hold esta desactivado, se busca la nota y se elimina del array
        
            ;printks "gkNotesDELETE:%4.f\n",0,kNoteNum
            
            kDeleteCounter=0
            
            while kNoteNum!=gkNotes[kDeleteCounter] do
                kDeleteCounter=kDeleteCounter+1
            od
            
            gkNotes[kDeleteCounter]=200  ; Se introduce el valor 200, asignado a la nota nula
            kNoteCounter=kNoteCounter-1
            
        endif
        
        if changed(kNoteCounter)==1 then  ; Se modifica la longitud del array de notas para activar el algoritmo de ordenacion
        reinit SIZE_ARRAY
            SIZE_ARRAY:
            if i(kNoteCounter)!=0 then
                kNotes[] init i(kNoteCounter)
                kNotes slicearray gkNotes, 0, i(kNoteCounter)-1
                kLen2 lenarray kNotes
                ;prints "i(kNoteCounter):%4.f\n",i(kNoteCounter)
            endif
        rireturn
        endif    
                
        if changed(kLen2)==1 then  ; Algoritmo de ordenacion en burbuja (bubble sort)
            
            kcounter=0
            kcounter2=1
            
            while kcounter<=kLen  do
                kcounter2=1
                while kcounter2<(kLen-kcounter) do
                
                    if gkNotes[kcounter2-1] > gkNotes[kcounter2] then
                        kVarTemp=gkNotes[kcounter2-1]
                        gkNotes[kcounter2-1]=gkNotes[kcounter2]
                        gkNotes[kcounter2]=kVarTemp
                        ;printks "gkNotes2[%f]:%4.f\n",0, kcounter2,gkNotes[kcounter2]
                    endif
                    kcounter2=kcounter2+1
                od
                kcounter=kcounter+1
            od
 
        endif
  
        kArpTrigger metro kArpRate
        
        if kArpTrigger==1 then                  ; Se generan eventos del instrumento 1 a una frecuencia marcada por kArpRate
            
            Sident24 sprintfk "ArpLight%d",kArpStepCounter-1
            chnset "colour(20,20,20)", Sident24
            
            if kArpStepCounter>kArpSteps then
                
                Sident2 sprintfk "ArpLight%d",kArpStepCounter
                chnset "colour(20,20,20))", Sident2

                kArpStepCounter=1

            endif
            
            if kArpStepCounter<=kArpSteps then
                
                Sident2 sprintfk "ArpLight%d",kArpStepCounter
                chnset "colour(0,200,0)", Sident2

                kArpStepCounter=kArpStepCounter+1
            endif

            if kArpDirection==1 then    
                
                if kPlayNote>=(kLen2) then
                    kPlayNote=0
                    kOctCounter=kOctCounter+1
                endif
                
                if kOctCounter>=(kArpOctRange) then
                    kOctCounter=0
                endif
                
                if gkNotes[kPlayNote]!=200 then
                
                    ;kArpPitch pow 1.05964, kPitch[kArpStepCounter-1]
                    kArpPitch = kPitch[kArpStepCounter-1]
                    
                    event "i", 1, 0, kArpGate/kArpRate, gkNotes[kPlayNote],2, kVel[kArpStepCounter-1], kArpPitch+12*kOctCounter             
                    ;printks "kOctCounter:%4.f\n",0,kOctCounter
                    kPlayNote=kPlayNote+1
                endif
                
            elseif kArpDirection==2 then
                
                if kPlayNote>=(kLen2) then
                    kPlayNote=0
                    kOctCounter=kOctCounter+1
                endif
                
                if kOctCounter>=(kArpOctRange) then
                    kOctCounter=0
                endif
                
                kArpPitch = kPitch[kArpStepCounter-1]
                
                if gkNotes[kPlayNote]!=200 then
                    event "i", 1, 0, kArpGate/kArpRate, gkNotes[(kLen2-1)-kPlayNote], 2, kVel[kArpStepCounter-1], kArpPitch+12*kOctCounter          
                    kPlayNote=kPlayNote+1
                    ;printks "gkNotes[(%4.f-1)-%4.f]:%4.f\n",0,kLen2,kPlayNote, gkNotes[(kLen2-1)-kPlayNote]     
                endif
                
            elseif kArpDirection==3 then
                
                if kPlayNote>=(2*kLen2-2) then
                    kPlayNote=0
                kOctCounter=kOctCounter+1
                endif
                
                if kOctCounter>=(kArpOctRange) then
                    kOctCounter=0
                endif
                
                kArpPitch = kPitch[kArpStepCounter-1]
                
                if kPlayNote<=(kLen2-1) then
                
                    event "i", 1, 0, kArpGate/kArpRate, gkNotes[kPlayNote],2, kVel[kArpStepCounter-1],kArpPitch+12*kOctCounter
                    ;printks "gkNotes3[%f]:%4.f\n",0, kPlayNote,gkNotes[kPlayNote] 
                                
                elseif kPlayNote>=(kLen2-1) then
                
                    event "i", 1, 0, kArpGate/kArpRate, gkNotes[(2*kLen2-1)-(kPlayNote+1)],2, kVel[kArpStepCounter-1],kArpPitch+12*kOctCounter
                    ;printks "gkNotes31[%f]:%4.f\n",0, (2*kLen2-1)-(kPlayNote+1),gkNotes[(2*kLen2-1)-(kPlayNote+1)]
                endif
                kPlayNote=kPlayNote+1
 
            endif
        endif
    endif  
endin

instr   102 ; Instrumento encargado de realizar las funciones de ejecucion constante del modulo principal
    
    ; Lectura canales zak
    
    aR  zar   0
    aL  zar   1
    
    ; Obtencion canales Cabbage
    
    kRvbFeedb chnget  "RvbFeedb"
    kRvbFilt  chnget  "RvbFilt"
    kRvbAmt   chnget  "RvbAmt"
    
    ; Reverberacion
    
    aRvbR=aR*kRvbAmt
    aRvbL=aL*kRvbAmt
    
    ;aRvbL,aRvbR  reverbsc  aRvbL, aRvbR, kRvbFeedb, kRvbFilt
    kRvbFeedb limit kRvbFeedb, 0, 1
    aRvbL, aRvbR freeverb aRvbL, aRvbR, kRvbFeedb, kRvbFilt
    
    aR=sum(aR,aRvbR)
    aL=sum(aL,aRvbL)
    
    ; Medidor RMS
    
    krmsR rms aR
    krmsL rms aL
    
    kdbfsR = dbfsamp(krmsR)
    kdbfsL = dbfsamp(krmsL)
       
    if(kdbfsR>=0) then
         chnset "colour(200,0,0)", "RMS_R1_ID"
         chnset "colour(200,200,50)", "RMS_R2_ID"
         chnset "colour(0,200,0)", "RMS_R3_ID"
         chnset "colour(0,200,0)", "RMS_R4_ID"
         chnset "colour(0,200,0)", "RMS_R5_ID"
    elseif (kdbfsR<0 && kdbfsR>=-6) then
         chnset "colour(20,20,20)", "RMS_R1_ID"
         chnset "colour(200,200,50)", "RMS_R2_ID"
         chnset "colour(0,200,0)", "RMS_R3_ID"
         chnset "colour(0,200,0)", "RMS_R4_ID"
         chnset "colour(0,200,0)", "RMS_R5_ID"
    elseif (kdbfsR<-6 && kdbfsR>=-15) then
         chnset "colour(20,20,20)", "RMS_R1_ID"
         chnset "colour(20,20,20)", "RMS_R2_ID"
         chnset "colour(0,200,0)", "RMS_R3_ID"
         chnset "colour(0,200,0)", "RMS_R4_ID"
         chnset "colour(0,200,0)", "RMS_R5_ID"
    elseif (kdbfsR<-15 && kdbfsR>=-30) then
         chnset "colour(20,20,20)", "RMS_R1_ID"
         chnset "colour(20,20,20)", "RMS_R2_ID"
         chnset "colour(20,20,20)", "RMS_R3_ID"
         chnset "colour(0,200,0)", "RMS_R4_ID"
         chnset "colour(0,200,0)", "RMS_R5_ID"
    elseif (kdbfsR<-30 && kdbfsR>=-60) then
         chnset "colour(20,20,20)", "RMS_R1_ID"
         chnset "colour(20,20,20)", "RMS_R2_ID"
         chnset "colour(20,20,20)", "RMS_R3_ID"
         chnset "colour(20,20,20)", "RMS_R4_ID"
         chnset "colour(0,200,0)", "RMS_R5_ID" 
    elseif (kdbfsR<-60) then
         chnset "colour(20,20,20)", "RMS_R1_ID"
         chnset "colour(20,20,20)", "RMS_R2_ID"
         chnset "colour(20,20,20)", "RMS_R3_ID"
         chnset "colour(20,20,20)", "RMS_R4_ID"
         chnset "colour(20,20,20)", "RMS_R5_ID"
    endif 
    
    if(kdbfsL>=0) then
         chnset "colour(200,0,0)", "RMS_L1_ID"
         chnset "colour(200,200,50)", "RMS_L2_ID"
         chnset "colour(0,200,0)", "RMS_L3_ID"
         chnset "colour(0,200,0)", "RMS_L4_ID"
         chnset "colour(0,200,0)", "RMS_L5_ID"
    elseif (kdbfsL<0 && kdbfsL>=-6) then
         chnset "colour(20,20,20)", "RMS_L1_ID"
         chnset "colour(200,200,50)", "RMS_L2_ID"
         chnset "colour(0,200,0)", "RMS_L3_ID"
         chnset "colour(0,200,0)", "RMS_L4_ID"
         chnset "colour(0,200,0)", "RMS_L5_ID"
    elseif (kdbfsL<-6 && kdbfsL>=-15) then
         chnset "colour(20,20,20)", "RMS_L1_ID"
         chnset "colour(20,20,20)", "RMS_L2_ID"
         chnset "colour(0,200,0)", "RMS_L3_ID"
         chnset "colour(0,200,0)", "RMS_L4_ID"
         chnset "colour(0,200,0)", "RMS_L5_ID"
    elseif (kdbfsL<-15 && kdbfsL>=-30) then
         chnset "colour(20,20,20)", "RMS_L1_ID"
         chnset "colour(20,20,20)", "RMS_L2_ID"
         chnset "colour(20,20,20)", "RMS_L3_ID"
         chnset "colour(0,200,0)", "RMS_L4_ID"
         chnset "colour(0,200,0)", "RMS_L5_ID"
    elseif (kdbfsL<-30 && kdbfsL>=-60) then
         chnset "colour(20,20,20)", "RMS_L1_ID"
         chnset "colour(20,20,20)", "RMS_L2_ID"
         chnset "colour(20,20,20)", "RMS_L3_ID"
         chnset "colour(20,20,20)", "RMS_L4_ID"
         chnset "colour(0,200,0)", "RMS_L5_ID" 
    elseif (kdbfsL<-60) then
         chnset "colour(20,20,20)", "RMS_L1_ID"
         chnset "colour(20,20,20)", "RMS_L2_ID"
         chnset "colour(20,20,20)", "RMS_L3_ID"
         chnset "colour(20,20,20)", "RMS_L4_ID"
         chnset "colour(20,20,20)", "RMS_L5_ID"
    endif
    
    ; Salida canales estereo
    
    outs      aR, aL ; send audio to outputs
    
    ; Limpieza canales zak
    
    zacl      0, 1
endin

</CsInstruments>
<CsScore>
i 100 0 [3600*24*7], p4
i 101 0 [3600*24*7]
i 102 0 [3600*24*7]
</CsScore>
</CsoundSynthesizer>
