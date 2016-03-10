  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vmovsldup %xmm11, %xmm14      #  2     0x4  5      OPC=vmovsldup_xmm_xmm    
  pmovzxwd %xmm14, %xmm1        #  3     0x9  6      OPC=pmovzxwd_xmm_xmm     
  retq                          #  4     0xf  1      OPC=retq                 
                                                                              
.size target, .-target
