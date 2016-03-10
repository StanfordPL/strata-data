  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  setle %bh                #  1     0     3      OPC=setle_rh        
  movsbw %bh, %dx          #  2     0x3   4      OPC=movsbw_r16_rh   
  movswq %dx, %r9          #  3     0x7   4      OPC=movswq_r64_r16  
  callq .read_of_into_rbx  #  4     0xb   5      OPC=callq_label     
  xchgl %ebx, %r9d         #  5     0x10  3      OPC=xchgl_r32_r32   
  retq                     #  6     0x13  1      OPC=retq            
                                                                     
.size target, .-target
