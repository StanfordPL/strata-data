  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movswq %bx, %rbp       #  1     0     4      OPC=movswq_r64_r16  
  movzwl %cx, %eax       #  2     0x4   3      OPC=movzwl_r32_r16  
  xorq %rbp, %rax        #  3     0x7   3      OPC=xorq_r64_r64    
  movslq %eax, %rbx      #  4     0xa   3      OPC=movslq_r64_r32  
  callq .set_szp_for_bx  #  5     0xd   5      OPC=callq_label     
  retq                   #  6     0x12  1      OPC=retq            
                                                                   
.size target, .-target
