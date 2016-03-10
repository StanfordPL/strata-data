  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwq %bx, %r11     #  1     0    4      OPC=movzwq_r64_r16    
  movw %r11w, %bx      #  2     0x4  4      OPC=movw_r16_r16      
  cmovnleq %rcx, %rbx  #  3     0x8  4      OPC=cmovnleq_r64_r64  
  retq                 #  4     0xc  1      OPC=retq              
                                                                  
.size target, .-target
