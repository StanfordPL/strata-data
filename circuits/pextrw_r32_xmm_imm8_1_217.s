  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpmovzxwq %xmm1, %ymm5           #  1     0    5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %ymm5, %ymm5, %ymm1  #  2     0x5  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovd %xmm1, %ebx                #  3     0x9  4      OPC=vmovd_r32_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
