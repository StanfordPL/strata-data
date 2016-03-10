  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label      
  vzeroall                            #  2     0x5   3      OPC=vzeroall         
  popcntl %ebx, %r8d                  #  3     0x8   5      OPC=popcntl_r32_r32  
  callq .move_064_128_r12_r13_xmm1    #  4     0xd   5      OPC=callq_label      
  cmovaew %bx, %r8w                   #  5     0x12  5      OPC=cmovaew_r16_r16  
  callq .move_r8b_to_byte_15_of_ymm1  #  6     0x17  5      OPC=callq_label      
  retq                                #  7     0x1c  1      OPC=retq             
                                                                                 
.size target, .-target
