  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vzeroall                      #  1     0     3      OPC=vzeroall            
  divps %xmm4, %xmm0            #  2     0x3   3      OPC=divps_xmm_xmm       
  vaddpd %ymm13, %ymm0, %ymm15  #  3     0x6   5      OPC=vaddpd_ymm_ymm_ymm  
  vpmovsxdq %xmm15, %ymm4       #  4     0xb   5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm4, %ymm4        #  5     0x10  4      OPC=vmovshdup_ymm_ymm   
  vpmovsxbd %xmm4, %ymm1        #  6     0x14  5      OPC=vpmovsxbd_ymm_xmm   
  retq                          #  7     0x19  1      OPC=retq                
                                                                              
.size target, .-target
