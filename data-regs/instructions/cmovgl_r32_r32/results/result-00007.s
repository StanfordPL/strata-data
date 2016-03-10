  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  setg %r12b          #  1     0     4      OPC=setg_r8          
  movsbq %r12b, %rbp  #  2     0x4   4      OPC=movsbq_r64_r8    
  decl %ebp           #  3     0x8   2      OPC=decl_r32         
  incb %bpl           #  4     0xa   3      OPC=incb_r8          
  cmovpol %ecx, %ebx  #  5     0xd   3      OPC=cmovpol_r32_r32  
  retq                #  6     0x10  1      OPC=retq             
                                                                 
.size target, .-target
