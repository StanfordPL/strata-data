  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label      
  movslq %ebx, %rcx        #  2     0x5   3      OPC=movslq_r64_r32   
  movl %ecx, %edx          #  3     0x8   2      OPC=movl_r32_r32     
  decl %edx                #  4     0xa   2      OPC=decl_r32         
  popcntw %dx, %ax         #  5     0xc   5      OPC=popcntw_r16_r16  
  addw %ax, %dx            #  6     0x11  3      OPC=addw_r16_r16     
  retq                     #  7     0x14  1      OPC=retq             
                                                                      
.size target, .-target
