  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label    
  minss %xmm5, %xmm1                            #  2     0x5   4      OPC=minss_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r9b             #  3     0x9   5      OPC=callq_label    
  movzbl %r9b, %ebx                             #  4     0xe   4      OPC=movzbl_r32_r8  
  retq                                          #  5     0x12  1      OPC=retq           
                                                                                         
.size target, .-target
