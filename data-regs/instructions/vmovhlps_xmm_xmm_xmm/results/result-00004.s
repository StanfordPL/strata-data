  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  vmovdqu %xmm2, %xmm5                      #  2     0x5   4      OPC=vmovdqu_xmm_xmm          
  vpunpckhqdq %xmm5, %xmm3, %xmm1           #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_r8b_to_byte_8_of_ymm1         #  4     0xd   5      OPC=callq_label              
  retq                                      #  5     0x12  1      OPC=retq                     
                                                                                               
.size target, .-target
