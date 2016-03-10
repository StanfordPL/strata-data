  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  movd %ebx, %xmm13                             #  1     0     5      OPC=movd_xmm_r32           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm7, %xmm13, %xmm15               #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklpd %xmm15, %xmm2, %xmm1                #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                   
                                                                                                 
.size target, .-target
