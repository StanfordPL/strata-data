  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovddup %ymm2, %ymm1                 #  1     0     4      OPC=vmovddup_ymm_ymm    
  callq .move_128_64_xmm1_xmm10_xmm11   #  2     0x4   5      OPC=callq_label         
  vmovsd %xmm3, %xmm3, %xmm11           #  3     0x9   4      OPC=vmovsd_xmm_xmm_xmm  
  por %xmm2, %xmm10                     #  4     0xd   5      OPC=por_xmm_xmm         
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
