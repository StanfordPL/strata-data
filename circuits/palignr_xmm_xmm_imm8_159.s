  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnpd %xmm2, %xmm2, %xmm15  #  1     0    4      OPC=vandnpd_xmm_xmm_xmm  
  vmovsd %xmm15, %xmm1, %xmm6   #  2     0x4  5      OPC=vmovsd_xmm_xmm_xmm   
  pmovzxwd %xmm6, %xmm1         #  3     0x9  5      OPC=pmovzxwd_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
