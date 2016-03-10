  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  movswq %cx, %r14     #  1     0     4      OPC=movswq_r64_r16   
  cmovngl %r14d, %ebx  #  2     0x4   4      OPC=cmovngl_r32_r32  
  xaddw %cx, %bx       #  3     0x8   4      OPC=xaddw_r16_r16    
  subw %r14w, %bx      #  4     0xc   4      OPC=subw_r16_r16     
  retq                 #  5     0x10  1      OPC=retq             
                                                                  
.size target, .-target
