  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpmovzxdq %xmm1, %ymm0          #  1     0     5      OPC=vpmovzxdq_ymm_xmm       
  vmovd %ebx, %xmm8               #  2     0x5   4      OPC=vmovd_xmm_r32           
  vpunpckldq %ymm8, %ymm0, %ymm3  #  3     0x9   5      OPC=vpunpckldq_ymm_ymm_ymm  
  movsd %xmm3, %xmm1              #  4     0xe   4      OPC=movsd_xmm_xmm           
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
