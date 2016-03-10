  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmaxss %xmm2, %xmm2, %xmm12                   #  1     0     4      OPC=vmaxss_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm7, %xmm12, %xmm9                #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vbroadcastss %xmm9, %xmm13                    #  4     0xd   5      OPC=vbroadcastss_xmm_xmm   
  vorpd %ymm9, %ymm9, %ymm12                    #  5     0x12  5      OPC=vorpd_ymm_ymm_ymm      
  callq .move_64_128_xmm12_xmm13_xmm1           #  6     0x17  5      OPC=callq_label            
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
