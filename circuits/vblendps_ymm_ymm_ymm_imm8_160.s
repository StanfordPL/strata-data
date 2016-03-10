  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovshdup %ymm3, %ymm5                        #  1     0     4      OPC=vmovshdup_ymm_ymm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vunpckhps %ymm5, %ymm2, %ymm6                 #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklps %ymm5, %ymm2, %ymm14                #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm6, %ymm14, %ymm1              #  5     0x11  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x15  5      OPC=callq_label              
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
