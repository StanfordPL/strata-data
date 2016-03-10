  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label            
  vmovapd %xmm2, %xmm7                          #  2     0x5   4      OPC=vmovapd_xmm_xmm        
  movd %r12d, %xmm1                             #  3     0x9   5      OPC=movd_xmm_r32           
  punpckldq %xmm7, %xmm1                        #  4     0xe   4      OPC=punpckldq_xmm_xmm      
  vunpcklpd %xmm7, %xmm7, %xmm3                 #  5     0x12  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movlhps %xmm3, %xmm1                          #  6     0x16  3      OPC=movlhps_xmm_xmm        
  retq                                          #  7     0x19  1      OPC=retq                   
                                                                                                 
.size target, .-target
