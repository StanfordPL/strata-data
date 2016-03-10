  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovaps %xmm2, %xmm12       #  1     0    4      OPC=vmovaps_xmm_xmm    
  vpxor %ymm2, %ymm12, %ymm1  #  2     0x4  4      OPC=vpxor_ymm_ymm_ymm  
  retq                        #  3     0x8  1      OPC=retq               
                                                                          
.size target, .-target
