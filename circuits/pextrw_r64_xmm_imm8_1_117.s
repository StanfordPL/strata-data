  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovupd %xmm10, %xmm4                           #  2     0x5   5      OPC=vmovupd_xmm_xmm  
  vmovd %xmm4, %ebx                               #  3     0xa   4      OPC=vmovd_r32_xmm    
  callq .move_032_016_ebx_r8w_r9w                 #  4     0xe   5      OPC=callq_label      
  callq .move_byte_10_of_ymm1_to_r9b              #  5     0x13  5      OPC=callq_label      
  movzwq %r9w, %rbx                               #  6     0x18  4      OPC=movzwq_r64_r16   
  retq                                            #  7     0x1c  1      OPC=retq             
                                                                                             
.size target, .-target
