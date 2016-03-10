  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movsbq %bl, %rbp       #  1     0     4      OPC=movsbq_r64_r8   
  xchgw %bp, %bx         #  2     0x4   3      OPC=xchgw_r16_r16   
  movzwl %cx, %ebx       #  3     0x7   3      OPC=movzwl_r32_r16  
  xorq %rbx, %rbp        #  4     0xa   3      OPC=xorq_r64_r64    
  movq %rbp, %rbx        #  5     0xd   3      OPC=movq_r64_r64    
  callq .set_szp_for_bx  #  6     0x10  5      OPC=callq_label     
  retq                   #  7     0x15  1      OPC=retq            
                                                                   
.size target, .-target
