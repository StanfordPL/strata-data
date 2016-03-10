  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %ymm1           #  1     0     5      OPC=vbroadcastss_ymm_xmm   
  vmovshdup %xmm2, %xmm13             #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vunpcklps %xmm1, %xmm13, %xmm0      #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovlhps %xmm1, %xmm0, %xmm1        #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm   
  callq .move_byte_30_of_ymm1_to_r8b  #  5     0x11  5      OPC=callq_label            
  callq .move_r8b_to_byte_28_of_ymm1  #  6     0x16  5      OPC=callq_label            
  retq                                #  7     0x1b  1      OPC=retq                   
                                                                                       
.size target, .-target
