  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %cx, %eax  #  1     0    3      OPC=movswl_r32_r16  
  movswl %bx, %edi  #  2     0x3  3      OPC=movswl_r32_r16  
  andl %edi, %eax   #  3     0x6  2      OPC=andl_r32_r32    
  xchgw %ax, %bx    #  4     0x8  3      OPC=xchgw_r16_r16   
  retq              #  5     0xb  1      OPC=retq            
                                                             
.size target, .-target
