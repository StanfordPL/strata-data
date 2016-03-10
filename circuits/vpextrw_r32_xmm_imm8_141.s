  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  popcntw %r8w, %r9w                        #  2     0x5   6      OPC=popcntw_r16_r16  
  callq .move_032_064_r8d_r9d_rbx           #  3     0xb   5      OPC=callq_label      
  callq .move_032_016_ebx_r8w_r9w           #  4     0x10  5      OPC=callq_label      
  movzwl %r9w, %ebx                         #  5     0x15  4      OPC=movzwl_r32_r16   
  retq                                      #  6     0x19  1      OPC=retq             
                                                                                       
.size target, .-target
