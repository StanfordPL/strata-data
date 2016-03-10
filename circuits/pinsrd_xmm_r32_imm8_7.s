  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movd %ebx, %xmm3                                #  1     0     4      OPC=movd_xmm_r32           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vpmovsxdq %xmm3, %ymm14                         #  3     0x9   5      OPC=vpmovsxdq_ymm_xmm      
  vunpcklps %xmm14, %xmm10, %xmm9                 #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm9, %xmm1                            #  5     0x13  4      OPC=movlhps_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
