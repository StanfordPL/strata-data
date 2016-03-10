  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movsldup %xmm2, %xmm0        #  1     0    4      OPC=movsldup_xmm_xmm    
  movsldup %xmm3, %xmm12       #  2     0x4  5      OPC=movsldup_xmm_xmm    
  vmovsd %xmm0, %xmm12, %xmm1  #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
