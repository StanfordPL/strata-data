  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  movl %ebx, %eax                    #  1     0    2      OPC=movl_r32_r32     
  cmovnsl %eax, %ecx                 #  2     0x2  3      OPC=cmovnsl_r32_r32  
  callq .move_032_016_ecx_r12w_r13w  #  3     0x5  5      OPC=callq_label      
  callq .move_016_032_r12w_r13w_ebx  #  4     0xa  5      OPC=callq_label      
  retq                               #  5     0xf  1      OPC=retq             
                                                                               
.size target, .-target
