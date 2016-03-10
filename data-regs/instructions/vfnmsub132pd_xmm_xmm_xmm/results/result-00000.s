  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vunpcklps %xmm2, %xmm2, %xmm8                   #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label               
  vfnmsub231pd %ymm8, %ymm8, %ymm8                #  3     0x9   5      OPC=vfnmsub231pd_ymm_ymm_ymm  
  vfmsub231pd %xmm8, %xmm9, %xmm3                 #  4     0xe   5      OPC=vfmsub231pd_xmm_xmm_xmm   
  vfmsub132pd %xmm3, %xmm2, %xmm1                 #  5     0x13  5      OPC=vfmsub132pd_xmm_xmm_xmm   
  retq                                            #  6     0x18  1      OPC=retq                      
                                                                                                      
.size target, .-target
