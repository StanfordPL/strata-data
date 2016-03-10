  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpxor %ymm1, %ymm1, %ymm8   #  1     0    4      OPC=vpxor_ymm_ymm_ymm   
  vsubps %ymm8, %ymm8, %ymm0  #  2     0x4  5      OPC=vsubps_ymm_ymm_ymm  
  cvtdq2pd %xmm0, %xmm1       #  3     0x9  4      OPC=cvtdq2pd_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
