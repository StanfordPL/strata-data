  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vmovupd %xmm2, %xmm1   #  1     0    4      OPC=vmovupd_xmm_xmm   
  vrsqrtps %ymm1, %ymm8  #  2     0x4  4      OPC=vrsqrtps_ymm_ymm  
  movdqa %xmm8, %xmm1    #  3     0x8  5      OPC=movdqa_xmm_xmm    
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
