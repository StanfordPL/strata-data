  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  movups %xmm12, %xmm9                  #  2     0x5   4      OPC=movups_xmm_xmm           
  vxorpd %xmm2, %xmm12, %xmm6           #  3     0x9   4      OPC=vxorpd_xmm_xmm_xmm       
  vmovq %xmm2, %xmm8                    #  4     0xd   4      OPC=vmovq_xmm_xmm            
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x11  5      OPC=callq_label              
  vpunpckhqdq %xmm6, %xmm9, %xmm12      #  6     0x16  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1   #  7     0x1a  5      OPC=callq_label              
  retq                                  #  8     0x1f  1      OPC=retq                     
                                                                                           
.size target, .-target
