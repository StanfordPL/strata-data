  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vmaxps %xmm1, %xmm1, %xmm5    #  1     0    4      OPC=vmaxps_xmm_xmm_xmm   
  vandnpd %xmm5, %xmm5, %xmm15  #  2     0x4  4      OPC=vandnpd_xmm_xmm_xmm  
  movddup %xmm15, %xmm1         #  3     0x8  5      OPC=movddup_xmm_xmm      
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
