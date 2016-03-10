  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  movshdup %xmm3, %xmm3                         #  2     0x5   4      OPC=movshdup_xmm_xmm          
  vfnmsub231pd %xmm7, %xmm4, %xmm4              #  3     0x9   5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  vunpckhpd %xmm3, %xmm3, %xmm7                 #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm     
  vunpcklps %xmm7, %xmm5, %xmm1                 #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label               
  retq                                          #  7     0x1b  1      OPC=retq                      
                                                                                                    
.size target, .-target
