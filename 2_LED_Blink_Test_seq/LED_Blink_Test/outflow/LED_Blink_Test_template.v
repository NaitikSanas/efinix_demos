
// Efinity Top-level template
// Version: 2021.1.165
// Date: 2022-05-13 13:54

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as G:\Harit\Harit\1_Project Resources\Sparrow\Project documents\HARDWARE\FPGA\Programming\fpga codes\2_LED_Blink_Test_seq\LED_Blink_Test\LED_Blink_Test.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  LED_Blink_Test
//     #4)  Insert design content.


module LED_Blink_Test
(
  input clk,
  output [3:0] led
);


endmodule

