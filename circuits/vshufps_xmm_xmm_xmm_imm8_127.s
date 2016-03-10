  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vbroadcastsd %xmm3, %ymm1                       #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vpbroadcastd %xmm11, %xmm13                     #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm1, %xmm3, %xmm1                   #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm13, %xmm1                             #  5     0x13  5      OPC=movsd_xmm_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
