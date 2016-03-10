  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                    
.target:                                    #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm3, %xmm1              #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label           
  callq .move_r8b_to_byte_0_of_ymm1         #  3     0x9  5      OPC=callq_label           
  retq                                      #  4     0xe  1      OPC=retq                  
                                                                                           
.size target, .-target
