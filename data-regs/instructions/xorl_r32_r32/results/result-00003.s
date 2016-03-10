  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32    
  callq .move_064_032_rbx_r12d_r13d  #  2     0x2   5      OPC=callq_label      
  xorq %rbx, %rcx                    #  3     0x7   3      OPC=xorq_r64_r64     
  popcntw %r12w, %r15w               #  4     0xa   6      OPC=popcntw_r16_r16  
  callq .read_sf_into_rbx            #  5     0x10  5      OPC=callq_label      
  xaddl %ebx, %ecx                   #  6     0x15  3      OPC=xaddl_r32_r32    
  retq                               #  7     0x18  1      OPC=retq             
                                                                                
.size target, .-target
