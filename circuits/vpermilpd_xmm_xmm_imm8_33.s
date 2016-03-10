  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vpbroadcastq %xmm2, %xmm5       #  1     0    5      OPC=vpbroadcastq_xmm_xmm   
  vmovaps %ymm5, %ymm13           #  2     0x5  4      OPC=vmovaps_ymm_ymm        
  vunpckhpd %xmm13, %xmm2, %xmm1  #  3     0x9  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
