  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzwl %bx, %edx       #  1     0     3      OPC=movzwl_r32_r16  
  movzwl %cx, %ebp       #  2     0x3   3      OPC=movzwl_r32_r16  
  xorq %rdx, %rbp        #  3     0x6   3      OPC=xorq_r64_r64    
  movslq %ebp, %rbx      #  4     0x9   3      OPC=movslq_r64_r32  
  callq .set_szp_for_bx  #  5     0xc   5      OPC=callq_label     
  rcll $0x1, %edx        #  6     0x11  2      OPC=rcll_r32_one    
  retq                   #  7     0x13  1      OPC=retq            
                                                                   
.size target, .-target
