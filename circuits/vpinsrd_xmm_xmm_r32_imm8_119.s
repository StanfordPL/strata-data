  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovd %ebx, %xmm7                             #  2     0x5   4      OPC=vmovd_xmm_r32      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  3     0x9   5      OPC=callq_label        
  vmovdqu %xmm3, %xmm4                          #  4     0xe   4      OPC=vmovdqu_xmm_xmm    
  vorpd %ymm4, %ymm4, %ymm1                     #  5     0x12  4      OPC=vorpd_ymm_ymm_ymm  
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
