  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwl %cx, %edi    #  1     0    3      OPC=movzwl_r32_r16   
  cmovnzw %di, %di    #  2     0x3  4      OPC=cmovnzw_r16_r16  
  cmovngl %edi, %ebx  #  3     0x7  3      OPC=cmovngl_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
