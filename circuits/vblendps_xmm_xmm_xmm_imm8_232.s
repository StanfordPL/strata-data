  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm9, %xmm7          #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  unpckhps %xmm3, %xmm7              #  3     0xa   3      OPC=unpckhps_xmm_xmm      
  vmovsd %xmm2, %xmm7, %xmm1         #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm    
  retq                               #  5     0x11  1      OPC=retq                  
                                                                                     
.size target, .-target
