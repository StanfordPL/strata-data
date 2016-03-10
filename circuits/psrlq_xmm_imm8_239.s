  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vaddsd %xmm1, %xmm1, %xmm13  #  1     0    4      OPC=vaddsd_xmm_xmm_xmm  
  mulss %xmm13, %xmm1          #  2     0x4  5      OPC=mulss_xmm_xmm       
  andnpd %xmm1, %xmm1          #  3     0x9  4      OPC=andnpd_xmm_xmm      
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
