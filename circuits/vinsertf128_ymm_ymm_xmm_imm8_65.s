  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovupd %xmm3, %xmm9                 #  1     0     4      OPC=vmovupd_xmm_xmm          
  movdqu %xmm2, %xmm1                  #  2     0x4   4      OPC=movdqu_xmm_xmm           
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpunpcklqdq %xmm11, %xmm10, %xmm8    #  4     0xd   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1   #  5     0x12  5      OPC=callq_label              
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
