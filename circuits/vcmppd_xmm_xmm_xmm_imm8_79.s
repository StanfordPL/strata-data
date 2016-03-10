  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vzeroall                      #  1     0     3      OPC=vzeroall             
  vdivss %xmm8, %xmm12, %xmm2   #  2     0x3   5      OPC=vdivss_xmm_xmm_xmm   
  vpmovsxdq %xmm2, %ymm13       #  3     0x8   5      OPC=vpmovsxdq_ymm_xmm    
  vphaddd %ymm2, %ymm13, %ymm4  #  4     0xd   5      OPC=vphaddd_ymm_ymm_ymm  
  pmovsxbq %xmm4, %xmm1         #  5     0x12  5      OPC=pmovsxbq_xmm_xmm     
  retq                          #  6     0x17  1      OPC=retq                 
                                                                               
.size target, .-target
