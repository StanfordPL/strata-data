  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovmskpd %xmm1, %ebx                         #  1     0     4      OPC=vmovmskpd_r32_xmm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vmulpd %xmm6, %xmm7, %xmm1                    #  3     0x9   4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_byte_13_of_ymm1_to_r9b            #  4     0xd   5      OPC=callq_label         
  callq .move_r9b_to_byte_3_of_rbx              #  5     0x12  5      OPC=callq_label         
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
