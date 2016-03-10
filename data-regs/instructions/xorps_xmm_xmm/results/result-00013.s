  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm1, %xmm2, %xmm6  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vmovdqa %ymm6, %ymm2        #  2     0x4  4      OPC=vmovdqa_ymm_ymm     
  movdqa %xmm2, %xmm1         #  3     0x8  4      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
