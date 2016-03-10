  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovups %xmm11, %xmm0                #  2     0x5   5      OPC=vmovups_xmm_xmm         
  vmovshdup %xmm0, %xmm2               #  3     0xa   4      OPC=vmovshdup_xmm_xmm       
  vmovsd %xmm2, %xmm2, %xmm1           #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  vpunpckldq %xmm0, %xmm1, %xmm3       #  5     0x12  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %ymm3, %ymm2, %ymm1       #  6     0x16  4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                                 #  7     0x1a  1      OPC=retq                    
                                                                                         
.size target, .-target
