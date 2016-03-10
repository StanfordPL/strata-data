  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vorps %xmm2, %xmm2, %xmm7      #  1     0    4      OPC=vorps_xmm_xmm_xmm     
  vmovhlps %xmm7, %xmm1, %xmm11  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1         #  3     0x8  5      OPC=unpcklpd_xmm_xmm      
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
