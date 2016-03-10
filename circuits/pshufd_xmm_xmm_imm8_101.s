  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm5, %xmm7                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhpd %xmm7, %xmm7, %xmm4                 #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label            
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
