  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovdqa %xmm2, %xmm1        #  1     0    4      OPC=vmovdqa_xmm_xmm     
  vmovdqu %xmm3, %xmm5        #  2     0x4  4      OPC=vmovdqu_xmm_xmm     
  vsubpd %ymm5, %ymm1, %ymm1  #  3     0x8  4      OPC=vsubpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
