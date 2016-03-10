  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  callq .move_032_064_r8d_r9d_rbx           #  2     0x5   5      OPC=callq_label      
  popcntw %bx, %r14w                        #  3     0xa   6      OPC=popcntw_r16_r16  
  cmovpw %bx, %bx                           #  4     0x10  4      OPC=cmovpw_r16_r16   
  retq                                      #  5     0x14  1      OPC=retq             
                                                                                       
.size target, .-target
