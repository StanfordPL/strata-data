  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vzeroall                            #  1     0     3      OPC=vzeroall                 
  divps %xmm12, %xmm1                 #  2     0x3   4      OPC=divps_xmm_xmm            
  vpmovsxdq %xmm1, %ymm9              #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm        
  vpmovsxdq %xmm9, %ymm10             #  4     0xc   5      OPC=vpmovsxdq_ymm_xmm        
  vpunpckhqdq %ymm13, %ymm10, %ymm12  #  5     0x11  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpbroadcastb %xmm12, %ymm1          #  6     0x16  5      OPC=vpbroadcastb_ymm_xmm     
  retq                                #  7     0x1b  1      OPC=retq                     
                                                                                         
.size target, .-target
