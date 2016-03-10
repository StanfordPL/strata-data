  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  popcntl %r8d, %r8d                        #  2     0x5   5      OPC=popcntl_r32_r32  
  movzbl %dh, %ebx                          #  3     0xa   3      OPC=movzbl_r32_rh    
  cmovnpl %edx, %ebx                        #  4     0xd   3      OPC=cmovnpl_r32_r32  
  retq                                      #  5     0x10  1      OPC=retq             
                                                                                       
.size target, .-target
