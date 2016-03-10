  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label                 
  vunpcklps %ymm3, %ymm2, %ymm1                   #  2     0x5   4      OPC=vunpcklps_ymm_ymm_ymm       
  vpunpckhdq %ymm3, %ymm2, %ymm4                  #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm      
  vfmsubadd132ps %xmm8, %xmm11, %xmm11            #  4     0xd   5      OPC=vfmsubadd132ps_xmm_xmm_xmm  
  vpunpcklqdq %ymm1, %ymm11, %ymm5                #  5     0x12  4      OPC=vpunpcklqdq_ymm_ymm_ymm     
  vpunpckhdq %ymm5, %ymm4, %ymm1                  #  6     0x16  4      OPC=vpunpckhdq_ymm_ymm_ymm      
  retq                                            #  7     0x1a  1      OPC=retq                        
                                                                                                        
.size target, .-target
