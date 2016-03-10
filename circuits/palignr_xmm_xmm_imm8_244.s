  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm2, %xmm2, %xmm3  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vmovups %ymm3, %ymm2        #  2     0x4  4      OPC=vmovups_ymm_ymm     
  pmovzxwq %xmm2, %xmm1       #  3     0x8  5      OPC=pmovzxwq_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
