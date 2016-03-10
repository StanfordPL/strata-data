  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vzeroall                         #  1     0     3      OPC=vzeroall                 
  vdivss %xmm4, %xmm11, %xmm9      #  2     0x3   4      OPC=vdivss_xmm_xmm_xmm       
  vpmovsxdq %xmm9, %ymm1           #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm        
  vpmovsxdq %xmm1, %xmm10          #  4     0xc   5      OPC=vpmovsxdq_xmm_xmm        
  vpor %ymm4, %ymm10, %ymm9        #  5     0x11  4      OPC=vpor_ymm_ymm_ymm         
  vpunpckhqdq %ymm9, %ymm9, %ymm1  #  6     0x15  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
