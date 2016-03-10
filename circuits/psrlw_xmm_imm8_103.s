  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  pxor %xmm1, %xmm1            #  1     0    4      OPC=pxor_xmm_xmm        
  vmaxpd %xmm1, %xmm1, %xmm15  #  2     0x4  4      OPC=vmaxpd_xmm_xmm_xmm  
  unpckhpd %xmm15, %xmm1       #  3     0x8  5      OPC=unpckhpd_xmm_xmm    
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
