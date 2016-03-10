  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label           
  vbroadcastsd %xmm12, %ymm11          #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm  
  vmovsd %xmm11, %xmm2, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                 #  4     0xf  1      OPC=retq                  
                                                                                      
.size target, .-target
