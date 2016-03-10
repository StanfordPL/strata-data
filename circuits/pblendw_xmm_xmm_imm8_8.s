  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxbd %xmm5, %xmm3                         #  2     0x5   5      OPC=pmovzxbd_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  3     0xa   5      OPC=callq_label       
  callq .move_r8b_to_byte_6_of_ymm1             #  4     0xf   5      OPC=callq_label       
  callq .move_r9b_to_byte_7_of_ymm1             #  5     0x14  5      OPC=callq_label       
  retq                                          #  6     0x19  1      OPC=retq              
                                                                                            
.size target, .-target
