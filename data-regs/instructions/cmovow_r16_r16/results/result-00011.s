  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwl %bx, %edx    #  1     0    3      OPC=movzwl_r32_r16   
  cmovnol %edx, %ecx  #  2     0x3  3      OPC=cmovnol_r32_r32  
  xaddw %bx, %cx      #  3     0x6  4      OPC=xaddw_r16_r16    
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
