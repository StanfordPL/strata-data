  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  callq .read_sf_into_rbx  #  2     0x3   5      OPC=callq_label     
  decw %bx                 #  3     0x8   3      OPC=decw_r16        
  movswl %bx, %ecx         #  4     0xb   3      OPC=movswl_r32_r16  
  xaddl %ecx, %ecx         #  5     0xe   3      OPC=xaddl_r32_r32   
  retq                     #  6     0x11  1      OPC=retq            
                                                                     
.size target, .-target
