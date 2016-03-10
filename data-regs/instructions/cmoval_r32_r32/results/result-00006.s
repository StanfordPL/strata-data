  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnael %ebx, %ecx  #  1     0    3      OPC=cmovnael_r32_r32  
  movslq %ecx, %rax    #  2     0x3  3      OPC=movslq_r64_r32    
  xchgl %eax, %ecx     #  3     0x6  2      OPC=xchgl_r32_r32     
  cmovnel %eax, %ebx   #  4     0x8  3      OPC=cmovnel_r32_r32   
  retq                 #  5     0xb  1      OPC=retq              
                                                                  
.size target, .-target
