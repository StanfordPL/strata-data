  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movslq %ecx, %rax   #  1     0     3      OPC=movslq_r64_r32   
  cmovael %ebx, %eax  #  2     0x3   3      OPC=cmovael_r32_r32  
  salb $0x1, %bl      #  3     0x6   2      OPC=salb_r8_one      
  callq .set_zf       #  4     0x8   5      OPC=callq_label      
  sete %dil           #  5     0xd   3      OPC=sete_r8          
  salb $0x1, %dil     #  6     0x10  2      OPC=salb_r8_one      
  cmovnel %eax, %ebx  #  7     0x12  3      OPC=cmovnel_r32_r32  
  retq                #  8     0x15  1      OPC=retq             
                                                                 
.size target, .-target
