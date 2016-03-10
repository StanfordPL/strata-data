  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movsd %xmm2, %xmm3                #  1     0     4      OPC=movsd_xmm_xmm    
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label      
  callq .move_064_128_r10_r11_xmm3  #  3     0x9   5      OPC=callq_label      
  vmovupd %xmm3, %xmm1              #  4     0xe   4      OPC=vmovupd_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq             
                                                                               
.size target, .-target
