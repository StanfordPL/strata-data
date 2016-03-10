  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %xmm4  #  1     0    5      OPC=vpmovzxdq_xmm_xmm  
  vcvtps2dq %ymm4, %ymm1  #  2     0x5  4      OPC=vcvtps2dq_ymm_ymm  
  movd %xmm1, %ebx        #  3     0x9  4      OPC=movd_r32_xmm       
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
