  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode               
.target:                  #        0     0      OPC=<label>          
  popcntl %ebx, %r10d     #  1     0     5      OPC=popcntl_r32_r32  
  negb %r10b              #  2     0x5   3      OPC=negb_r8          
  decl %ebx               #  3     0x8   2      OPC=decl_r32         
  notl %ebx               #  4     0xa   2      OPC=notl_r32         
  callq .set_szp_for_ebx  #  5     0xc   5      OPC=callq_label      
  retq                    #  6     0x11  1      OPC=retq             
                                                                     
.size target, .-target
