  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpand %xmm2, %xmm3, %xmm6   #  1     0    4      OPC=vpand_xmm_xmm_xmm  
  vpxor %xmm3, %xmm6, %xmm13  #  2     0x4  4      OPC=vpxor_xmm_xmm_xmm  
  vmovupd %ymm13, %ymm1       #  3     0x8  5      OPC=vmovupd_ymm_ymm    
  retq                        #  4     0xd  1      OPC=retq               
                                                                          
.size target, .-target
