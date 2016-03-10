  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnbe %r13b        #  1     0    4      OPC=setnbe_r8        
  salb $0x1, %r13b    #  2     0x4  3      OPC=salb_r8_one      
  cmovnel %ecx, %ebx  #  3     0x7  3      OPC=cmovnel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
