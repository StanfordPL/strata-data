  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vxorpd %xmm1, %xmm1, %xmm3                      #  1     0     4      OPC=vxorpd_xmm_xmm_xmm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpckhqdq %xmm11, %xmm1, %xmm11               #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm11, %rbx                              #  4     0xe   5      OPC=vmovq_r64_xmm            
  retq                                            #  5     0x13  1      OPC=retq                     
                                                                                                     
.size target, .-target
