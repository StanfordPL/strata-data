  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovdqa %ymm2, %ymm1        #  1     0    4      OPC=vmovdqa_ymm_ymm    
  vpxor %xmm1, %xmm2, %xmm12  #  2     0x4  4      OPC=vpxor_xmm_xmm_xmm  
  sqrtps %xmm12, %xmm1        #  3     0x8  4      OPC=sqrtps_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq               
                                                                          
.size target, .-target
