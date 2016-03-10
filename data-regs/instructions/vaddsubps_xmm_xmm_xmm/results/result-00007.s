  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  addsubps %xmm3, %xmm2             #  1     0     4      OPC=addsubps_xmm_xmm  
  movups %xmm2, %xmm3               #  2     0x4   3      OPC=movups_xmm_xmm    
  callq .move_128_064_xmm3_r10_r11  #  3     0x7   5      OPC=callq_label       
  vzeroall                          #  4     0xc   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm1  #  5     0xf   5      OPC=callq_label       
  retq                              #  6     0x14  1      OPC=retq              
                                                                                
.size target, .-target
