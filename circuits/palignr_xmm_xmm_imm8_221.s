  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vpmovsxwd %xmm2, %xmm0        #  1     0    5      OPC=vpmovsxwd_xmm_xmm    
  vandnpd %xmm0, %xmm0, %xmm14  #  2     0x5  4      OPC=vandnpd_xmm_xmm_xmm  
  movupd %xmm14, %xmm1          #  3     0x9  5      OPC=movupd_xmm_xmm       
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
