  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnc %r8b          #  1     0    4      OPC=setnc_r8         
  movslq %ecx, %rsi   #  2     0x4  3      OPC=movslq_r64_r32   
  shlb $0x1, %r8b     #  3     0x7  3      OPC=shlb_r8_one      
  cmovnzl %esi, %ebx  #  4     0xa  3      OPC=cmovnzl_r32_r32  
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
