  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovshdup %xmm2, %xmm12         #  1     0    4      OPC=vmovshdup_xmm_xmm      
  vpbroadcastd %xmm2, %ymm3       #  2     0x4  5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhpd %xmm12, %xmm3, %xmm1  #  3     0x9  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
