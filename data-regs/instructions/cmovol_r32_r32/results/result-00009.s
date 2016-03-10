  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setno %dl           #  1     0    3      OPC=setno_r8         
  salb $0x1, %dl      #  2     0x3  2      OPC=salb_r8_one      
  cmovnal %ecx, %ebx  #  3     0x5  3      OPC=cmovnal_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
