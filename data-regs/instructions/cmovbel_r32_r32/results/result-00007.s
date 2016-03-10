  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP   Bytes  Opcode                
.target:               #        0     0      OPC=<label>           
  cmovnal %ecx, %ebx   #  1     0     3      OPC=cmovnal_r32_r32   
  movswq %bx, %rax     #  2     0x3   4      OPC=movswq_r64_r16    
  rclb $0x1, %al       #  3     0x7   2      OPC=rclb_r8_one       
  negw %ax             #  4     0x9   3      OPC=negw_r16          
  xorw %bx, %ax        #  5     0xc   3      OPC=xorw_r16_r16      
  cmovnael %eax, %ebx  #  6     0xf   3      OPC=cmovnael_r32_r32  
  retq                 #  7     0x12  1      OPC=retq              
                                                                   
.size target, .-target
