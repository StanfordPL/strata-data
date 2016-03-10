  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm10, %xmm7           #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  movshdup %xmm11, %xmm13              #  3     0xa   5      OPC=movshdup_xmm_xmm      
  vmovlhps %xmm7, %xmm13, %xmm1        #  4     0xf   4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
