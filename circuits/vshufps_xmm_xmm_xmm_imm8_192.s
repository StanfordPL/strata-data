  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm3, %xmm4                       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm3, %xmm4, %xmm1                   #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpbroadcastd %xmm8, %ymm10                      #  4     0xe   5      OPC=vpbroadcastd_ymm_xmm   
  movsd %xmm10, %xmm1                             #  5     0x13  5      OPC=movsd_xmm_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
