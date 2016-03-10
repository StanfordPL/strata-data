  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm5   #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  punpckhdq %xmm2, %xmm5      #  2     0x5  4      OPC=punpckhdq_xmm_xmm     
  vmovsd %xmm2, %xmm5, %xmm1  #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
