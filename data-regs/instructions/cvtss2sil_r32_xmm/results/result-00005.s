  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovupd %xmm1, %xmm3    #  1     0    4      OPC=vmovupd_xmm_xmm    
  vcvtps2dq %ymm3, %ymm8  #  2     0x4  4      OPC=vcvtps2dq_ymm_ymm  
  movd %xmm8, %ebx        #  3     0x8  5      OPC=movd_r32_xmm       
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
