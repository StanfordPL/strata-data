  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovngl %ecx, %ebx  #  1     0    3      OPC=cmovngl_r32_r32  
  setl %dl            #  2     0x3  3      OPC=setl_r8          
  xorb %cl, %dl       #  3     0x6  2      OPC=xorb_r8_r8       
  cmovew %bx, %bx     #  4     0x8  4      OPC=cmovew_r16_r16   
  retq                #  5     0xc  1      OPC=retq             
                                                                
.size target, .-target
