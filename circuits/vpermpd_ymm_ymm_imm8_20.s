  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  movupd %xmm2, %xmm0                   #  1     0     4      OPC=movupd_xmm_xmm   
  callq .move_128_64_xmm2_xmm12_xmm13   #  2     0x4   5      OPC=callq_label      
  movlhps %xmm0, %xmm13                 #  3     0x9   4      OPC=movlhps_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xd   5      OPC=callq_label      
  por %xmm2, %xmm1                      #  5     0x12  4      OPC=por_xmm_xmm      
  retq                                  #  6     0x16  1      OPC=retq             
                                                                                   
.size target, .-target
