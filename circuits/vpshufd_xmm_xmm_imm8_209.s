  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm2, %xmm7, %xmm14                 #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  vbroadcastss %xmm5, %xmm13                    #  3     0x9   5      OPC=vbroadcastss_xmm_xmm   
  vmovss %xmm4, %xmm14, %xmm11                  #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm     
  vunpcklps %xmm11, %xmm13, %xmm3               #  5     0x12  5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovups %ymm3, %ymm1                          #  6     0x17  4      OPC=vmovups_ymm_ymm        
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
