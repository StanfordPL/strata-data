  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vpmovsxwd %xmm2, %xmm0        #  1     0     5      OPC=vpmovsxwd_xmm_xmm    
  vmulpd %xmm2, %xmm1, %xmm7    #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm   
  vmovq %xmm0, %xmm3            #  3     0x9   4      OPC=vmovq_xmm_xmm        
  vhaddpd %ymm3, %ymm7, %ymm11  #  4     0xd   4      OPC=vhaddpd_ymm_ymm_ymm  
  vpor %ymm11, %ymm11, %ymm11   #  5     0x11  5      OPC=vpor_ymm_ymm_ymm     
  movq %xmm11, %xmm1            #  6     0x16  5      OPC=movq_xmm_xmm         
  retq                          #  7     0x1b  1      OPC=retq                 
                                                                               
.size target, .-target
