  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm11  #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  vmovdqa %xmm11, %xmm5       #  2     0x5  5      OPC=vmovdqa_xmm_xmm       
  movd %xmm5, %ebx            #  3     0xa  4      OPC=movd_r32_xmm          
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
