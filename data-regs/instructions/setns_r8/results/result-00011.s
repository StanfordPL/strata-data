  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .read_sf_into_rbx            #  1     0     5      OPC=callq_label      
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label      
  popcntw %r10w, %r12w               #  3     0xa   6      OPC=popcntw_r16_r16  
  callq .read_zf_into_rbx            #  4     0x10  5      OPC=callq_label      
  retq                               #  5     0x15  1      OPC=retq             
                                                                                
.size target, .-target
