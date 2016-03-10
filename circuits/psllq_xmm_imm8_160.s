  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vcvttpd2dq %xmm1, %xmm7       #  1     0    4      OPC=vcvttpd2dq_xmm_xmm   
  vandnps %xmm7, %xmm7, %xmm14  #  2     0x4  4      OPC=vandnps_xmm_xmm_xmm  
  pmovsxdq %xmm14, %xmm1        #  3     0x8  6      OPC=pmovsxdq_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
