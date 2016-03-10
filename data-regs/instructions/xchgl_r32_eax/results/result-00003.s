  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  movslq %ebx, %rdx        #  1     0    3      OPC=movslq_r64_r32  
  addw %ax, %bx            #  2     0x3  3      OPC=addw_r16_r16    
  xchgl %eax, %edx         #  3     0x6  2      OPC=xchgl_r32_r32   
  callq .read_sf_into_rbx  #  4     0x8  5      OPC=callq_label     
  xchgl %edx, %ebx         #  5     0xd  2      OPC=xchgl_r32_r32   
  retq                     #  6     0xf  1      OPC=retq            
                                                                    
.size target, .-target
