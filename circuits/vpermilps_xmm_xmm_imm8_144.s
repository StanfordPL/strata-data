  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  movsldup %xmm13, %xmm6               #  2     0x5   5      OPC=movsldup_xmm_xmm       
  vunpcklps %xmm6, %xmm2, %xmm5        #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklps %xmm5, %xmm12, %xmm6       #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovupd %xmm6, %xmm1                 #  5     0x12  4      OPC=vmovupd_xmm_xmm        
  retq                                 #  6     0x16  1      OPC=retq                   
                                                                                        
.size target, .-target
