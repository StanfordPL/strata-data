  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x40, %rbx                  #  1     0     10     OPC=movq_r64_imm64   
  setae %bh                         #  2     0xa   3      OPC=setae_rh         
  callq .move_064_032_rbx_r8d_r9d   #  3     0xd   5      OPC=callq_label      
  callq .move_byte_3_of_rbx_to_r8b  #  4     0x12  5      OPC=callq_label      
  popcntw %r8w, %r8w                #  5     0x17  6      OPC=popcntw_r16_r16  
  xaddw %bx, %r8w                   #  6     0x1d  5      OPC=xaddw_r16_r16    
  retq                              #  7     0x22  1      OPC=retq             
                                                                               
.size target, .-target
