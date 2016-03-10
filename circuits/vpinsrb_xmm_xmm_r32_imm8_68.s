  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label      
  vmovapd %xmm2, %xmm1               #  2     0x5   4      OPC=vmovapd_xmm_xmm  
  movzbq %bl, %rcx                   #  3     0x9   4      OPC=movzbq_r64_r8    
  xchgb %cl, %r9b                    #  4     0xd   3      OPC=xchgb_r8_r8      
  callq .move_r9b_to_byte_4_of_ymm1  #  5     0x10  5      OPC=callq_label      
  retq                               #  6     0x15  1      OPC=retq             
                                                                                
.size target, .-target
