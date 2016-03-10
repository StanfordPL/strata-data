  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label      
  clc                      #  2     0x5  1      OPC=clc              
  setge %ah                #  3     0x6  3      OPC=setge_rh         
  cmovnal %ecx, %eax       #  4     0x9  3      OPC=cmovnal_r32_r32  
  retq                     #  5     0xc  1      OPC=retq             
                                                                     
.size target, .-target
