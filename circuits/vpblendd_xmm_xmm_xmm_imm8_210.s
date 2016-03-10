  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovsd %xmm10, %xmm2, %xmm1          #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm    
  movss %xmm1, %xmm3                   #  3     0xa   4      OPC=movss_xmm_xmm         
  vmovlhps %xmm11, %xmm3, %xmm1        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
