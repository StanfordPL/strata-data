  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovddup %xmm3, %xmm0              #  1     0     4      OPC=vmovddup_xmm_xmm         
  vmovdqu %xmm2, %xmm11              #  2     0x4   4      OPC=vmovdqu_xmm_xmm          
  callq .move_128_64_xmm2_xmm8_xmm9  #  3     0x8   5      OPC=callq_label              
  vmovss %xmm11, %xmm0, %xmm4        #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm       
  vpunpckhqdq %xmm9, %xmm11, %xmm0   #  5     0x12  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpcklqdq %xmm0, %xmm4, %xmm1    #  6     0x17  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
