  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movswq %bx, %r11         #  1     0     4      OPC=movswq_r64_r16  
  xorq %rax, %rax          #  2     0x4   3      OPC=xorq_r64_r64    
  cmoveq %r11, %rax        #  3     0x7   4      OPC=cmoveq_r64_r64  
  callq .read_cf_into_rbx  #  4     0xb   5      OPC=callq_label     
  sarq $0x1, %rax          #  5     0x10  3      OPC=sarq_r64_one    
  xchgw %bx, %ax           #  6     0x13  3      OPC=xchgw_r16_r16   
  retq                     #  7     0x16  1      OPC=retq            
                                                                     
.size target, .-target
