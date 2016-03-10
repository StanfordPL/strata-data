  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm12      #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm12, %xmm2, %xmm7  #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklpd %xmm7, %xmm12, %xmm8  #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  movups %xmm8, %xmm1             #  4     0xe   4      OPC=movups_xmm_xmm         
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
