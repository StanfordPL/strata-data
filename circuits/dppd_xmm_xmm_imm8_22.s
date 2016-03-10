  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmulsd %xmm2, %xmm1, %xmm12   #  1     0     4      OPC=vmulsd_xmm_xmm_xmm  
  pxor %xmm1, %xmm1             #  2     0x4   4      OPC=pxor_xmm_xmm        
  vaddsd %xmm1, %xmm12, %xmm0   #  3     0x8   4      OPC=vaddsd_xmm_xmm_xmm  
  vmaxpd %ymm0, %ymm12, %ymm11  #  4     0xc   4      OPC=vmaxpd_ymm_ymm_ymm  
  punpcklqdq %xmm11, %xmm1      #  5     0x10  5      OPC=punpcklqdq_xmm_xmm  
  retq                          #  6     0x15  1      OPC=retq                
                                                                              
.size target, .-target
