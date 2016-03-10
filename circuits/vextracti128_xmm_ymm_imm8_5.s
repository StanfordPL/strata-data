  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  mulps %xmm1, %xmm1                    #  1     0    3      OPC=mulps_xmm_xmm    
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x3  5      OPC=callq_label      
  vmovupd %xmm11, %xmm1                 #  3     0x8  5      OPC=vmovupd_xmm_xmm  
  retq                                  #  4     0xd  1      OPC=retq             
                                                                                  
.size target, .-target
