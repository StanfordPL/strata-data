  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm8  #  1     0     4      OPC=vmovshdup_xmm_xmm  
  vpmovsxwq %xmm8, %ymm1  #  2     0x4   5      OPC=vpmovsxwq_ymm_xmm  
  pmovzxwq %xmm1, %xmm1   #  3     0x9   5      OPC=pmovzxwq_xmm_xmm   
  movd %xmm1, %ebx        #  4     0xe   4      OPC=movd_r32_xmm       
  retq                    #  5     0x12  1      OPC=retq               
                                                                       
.size target, .-target
