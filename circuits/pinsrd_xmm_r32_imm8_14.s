  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  movd %ebx, %xmm13                             #  2     0x5   5      OPC=movd_xmm_r32           
  vunpcklps %xmm7, %xmm13, %xmm7                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm7, %xmm1                          #  4     0xe   3      OPC=movlhps_xmm_xmm        
  retq                                          #  5     0x11  1      OPC=retq                   
                                                                                                 
.size target, .-target
