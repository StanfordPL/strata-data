  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswq %bx, %r8     #  1     0    4      OPC=movswq_r64_r16   
  cmovnbl %r8d, %ecx  #  2     0x4  4      OPC=cmovnbl_r32_r32  
  movw %cx, %bx       #  3     0x8  3      OPC=movw_r16_r16     
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
