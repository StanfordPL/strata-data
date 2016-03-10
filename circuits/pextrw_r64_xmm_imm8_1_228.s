  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  vmovq %xmm6, %r8                              #  2     0x5   5      OPC=vmovq_r64_xmm   
  callq .move_byte_8_of_ymm1_to_r8b             #  3     0xa   5      OPC=callq_label     
  movzwl %r8w, %ebx                             #  4     0xf   4      OPC=movzwl_r32_r16  
  retq                                          #  5     0x13  1      OPC=retq            
                                                                                          
.size target, .-target
