  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  xorw %bx, %bx            #  1     0    3      OPC=xorw_r16_r16   
  callq .read_sf_into_rbx  #  2     0x3  5      OPC=callq_label    
  xchgl %ebx, %ecx         #  3     0x8  2      OPC=xchgl_r32_r32  
  retq                     #  4     0xa  1      OPC=retq           
                                                                   
.size target, .-target
