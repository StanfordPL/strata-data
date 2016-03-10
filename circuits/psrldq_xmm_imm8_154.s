  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                   
.target:                          #        0    0      OPC=<label>              
  vminss %xmm1, %xmm1, %xmm11     #  1     0    4      OPC=vminss_xmm_xmm_xmm   
  vandnpd %ymm11, %ymm11, %ymm12  #  2     0x4  5      OPC=vandnpd_ymm_ymm_ymm  
  movapd %xmm12, %xmm1            #  3     0x9  5      OPC=movapd_xmm_xmm       
  retq                            #  4     0xe  1      OPC=retq                 
                                                                                
.size target, .-target
