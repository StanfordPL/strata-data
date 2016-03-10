  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_byte_5_of_ymm1_to_r9b             #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm6, %ebx                         #  3     0xa   4      OPC=vmovmskpd_r32_xmm  
  xchgb %r9b, %bl                               #  4     0xe   3      OPC=xchgb_r8_r8        
  retq                                          #  5     0x11  1      OPC=retq               
                                                                                             
.size target, .-target
