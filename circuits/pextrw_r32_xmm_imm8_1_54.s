  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  popcntw %dx, %bx                          #  2     0x5   5      OPC=popcntw_r16_r16  
  callq .read_sf_into_rbx                   #  3     0xa   5      OPC=callq_label      
  cmovnsw %r9w, %bx                         #  4     0xf   5      OPC=cmovnsw_r16_r16  
  retq                                      #  5     0x14  1      OPC=retq             
                                                                                       
.size target, .-target
