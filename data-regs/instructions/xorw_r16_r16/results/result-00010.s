  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movswq %bx, %rdi       #  1     0     4      OPC=movswq_r64_r16  
  movzwl %cx, %ecx       #  2     0x4   3      OPC=movzwl_r32_r16  
  xorq %rcx, %rdi        #  3     0x7   3      OPC=xorq_r64_r64    
  xchgw %bx, %di         #  4     0xa   3      OPC=xchgw_r16_r16   
  clc                    #  5     0xd   1      OPC=clc             
  callq .set_szp_for_bx  #  6     0xe   5      OPC=callq_label     
  retq                   #  7     0x13  1      OPC=retq            
                                                                   
.size target, .-target
