  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vpxor %xmm5, %xmm5, %xmm0  #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  vmovaps %ymm0, %ymm0       #  2     0x4   4      OPC=vmovaps_ymm_ymm    
  pmovsxdq %xmm0, %xmm13     #  3     0x8   6      OPC=pmovsxdq_xmm_xmm   
  xorpd %xmm1, %xmm1         #  4     0xe   4      OPC=xorpd_xmm_xmm      
  maxpd %xmm13, %xmm1        #  5     0x12  5      OPC=maxpd_xmm_xmm      
  retq                       #  6     0x17  1      OPC=retq               
                                                                          
.size target, .-target
