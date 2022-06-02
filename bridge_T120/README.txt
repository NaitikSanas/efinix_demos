Trion T20 MIPI Development Kit: Raspberry Pi Example Design

The mipi_pi_top Efinity project demonstrates a Raspberry Pi camera
sending image data through a T20 device to a Raspberry Pi.  The camera
sends data over MIPI CSI to the T20 MIPI RX.  The image data is lightly
manipulated in the Trion core logic and then sent to the T20 MIPI TX.
From there it is transmitted over MIPI CSI to the Raspberry Pi, and the
resulting image can be viewed from the Raspberry Pi's HDMI-attached display.


Requirements:

Efinity software version 2019.3 or later
Trion T20 MIPI Development Kit
Raspberry Pi V2 camera
Raspberry Pi kit (version 4 recommended)
    -- Raspberry Pi USB power cable
    -- Raspberry Pi HDMI cable connected to HDMI display
    -- USB keyboard/mouse
Raspberry Pi Camera Connecter Daughter Cards
2 15-pin flat cables

See AN 012: Using the Trion T20 MIPI-Raspberry Pi Example Design
www.efinixinc.com/docs

