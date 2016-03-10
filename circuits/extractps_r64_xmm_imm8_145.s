  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label      
  popcntl %r9d, %ebx                        #  2     0x5  5      OPC=popcntl_r32_r32  
  cmovnol %edx, %ebx                        #  3     0xa  3      OPC=cmovnol_r32_r32  
  retq                                      #  4     0xd  1      OPC=retq             
                                                                                      
.size target, .-target
