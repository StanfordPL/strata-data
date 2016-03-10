  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vminpd %xmm7, %xmm7, %xmm8                    #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm     
  vpbroadcastq %xmm6, %ymm7                     #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklps %ymm8, %ymm7, %ymm7                 #  4     0xe   5      OPC=vunpcklps_ymm_ymm_ymm  
  movq %xmm7, %rbx                              #  5     0x13  5      OPC=movq_r64_xmm           
  retq                                          #  6     0x18  1      OPC=retq                   
                                                                                                 
.size target, .-target
