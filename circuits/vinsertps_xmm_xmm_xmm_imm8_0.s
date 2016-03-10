  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  vbroadcastsd %xmm3, %ymm1            #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5  5      OPC=callq_label           
  vmovss %xmm13, %xmm2, %xmm1          #  3     0xa  5      OPC=vmovss_xmm_xmm_xmm    
  retq                                 #  4     0xf  1      OPC=retq                  
                                                                                      
.size target, .-target
