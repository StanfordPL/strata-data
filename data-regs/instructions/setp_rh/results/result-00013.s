  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label   
  xorq %rax, %rax          #  2     0x5   3      OPC=xorq_r64_r64  
  xaddb %ch, %cl           #  3     0x8   3      OPC=xaddb_r8_rh   
  salb $0x1, %al           #  4     0xb   2      OPC=salb_r8_one   
  setno %cl                #  5     0xd   3      OPC=setno_r8      
  movl %ecx, %eax          #  6     0x10  2      OPC=movl_r32_r32  
  retq                     #  7     0x12  1      OPC=retq          
                                                                   
.size target, .-target
