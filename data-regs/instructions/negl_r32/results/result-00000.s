  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode               
.target:                  #        0     0      OPC=<label>          
  popcntl %ebx, %esi      #  1     0     4      OPC=popcntl_r32_r32  
  movsbq %sil, %rbp       #  2     0x4   4      OPC=movsbq_r64_r8    
  negw %bp                #  3     0x8   3      OPC=negw_r16         
  decl %ebx               #  4     0xb   2      OPC=decl_r32         
  notl %ebx               #  5     0xd   2      OPC=notl_r32         
  callq .set_szp_for_ebx  #  6     0xf   5      OPC=callq_label      
  retq                    #  7     0x14  1      OPC=retq             
                                                                     
.size target, .-target
