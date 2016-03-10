  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm1        #  1     0     4      OPC=vmovupd_xmm_xmm     
  vmovdqa %xmm3, %xmm0        #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vminps %ymm0, %ymm1, %ymm5  #  3     0x8   4      OPC=vminps_ymm_ymm_ymm  
  vminps %ymm5, %ymm0, %ymm1  #  4     0xc   4      OPC=vminps_ymm_ymm_ymm  
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
