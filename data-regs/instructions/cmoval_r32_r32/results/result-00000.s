  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  setnbe %r11b         #  1     0    4      OPC=setnbe_r8         
  cmovzq %rbx, %rcx    #  2     0x4  4      OPC=cmovzq_r64_r64    
  negb %r11b           #  3     0x8  3      OPC=negb_r8           
  cmovnael %ecx, %ebx  #  4     0xb  3      OPC=cmovnael_r32_r32  
  retq                 #  5     0xe  1      OPC=retq              
                                                                  
.size target, .-target
